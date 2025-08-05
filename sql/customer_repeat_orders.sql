WITH ProfitPerCustomer AS (
  SELECT
      "Customer ID",
      "Customer Name",
      "Segment",
      COUNT(DISTINCT "Order ID") AS orders_per_customer,
      SUM(Profit) AS profit_per_customer
  
      FROM superstore_data

    GROUP BY "Customer ID", "Customer Name"
    ORDER BY orders_per_customer DESC
)

--Used for the Number of Customers per Segment by Orders per Customer stacked
--column chart in Customer Segment Analaysis.

SELECT
  *, 
  (CASE
    WHEN profit_per_customer >= 0 THEN
	  CAST(profit_per_customer / 250 AS INTEGER) * 250
	ELSE
	  CAST((profit_per_customer - 249) / 250 AS INTEGER) * 250 
  END) AS profit_bin

  FROM ProfitPerCustomer
  ORDER BY profit_per_customer