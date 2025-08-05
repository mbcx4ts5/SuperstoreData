--Used for the Pareto curve of cumulative customers and profit in
--Customer Segment Analysis.
--Shows around 40% of customers make 80% of positive profits.

WITH CustomerProfits AS (
  --Getting customer data and profits per customer
  SELECT
    "Customer ID",
    "Customer Name",
    "Segment",
    COUNT(DISTINCT "Order ID") AS orders_per_customer,
    SUM(Profit) AS profit_per_customer
  
    FROM superstore_data

  GROUP BY "Customer ID", "Customer Name"
  ORDER BY orders_per_customer DESC
),

Ranked AS (
  -- Get rank using window function
  SELECT
    *,
	RANK() OVER (ORDER BY profit_per_customer DESC) AS profit_rank
  
    FROM CustomerProfits
	WHERE profit_per_customer > 0
),

TotalProfit AS (
  --Determine total profit
  SELECT SUM(profit_per_customer) AS total_profit 
    FROM CustomerProfits
	WHERE profit_per_customer > 0
),

Cumulative AS (
  -- Get rolling cumulative profit
  SELECT
    *,
	(SELECT SUM(profit_per_customer)
	   FROM Ranked r2
	   WHERE r2.profit_rank <= r1.profit_rank
	   AND r2.profit_per_customer > 0 
	) AS cumulative_profit
  
    FROM Ranked r1
),

Final AS (
  SELECT 
    c.*,
	
	--Percentage formats for cumulative profits and customers
	100.0 * c.cumulative_profit / tp.total_profit AS cumulative_profit_percent,
	100.0 * c.profit_rank / (SELECT COUNT(*) FROM CustomerProfits WHERE profit_per_customer > 0) AS customer_percent
	
    FROM Cumulative c
	JOIN TotalProfit tp
)

SELECT *
  FROM Final