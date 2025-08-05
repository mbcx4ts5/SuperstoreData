--Used for the donut charts of Profit and Total Customers
--by segment in Customer Segment Analysis.

SELECT
  Segment,
  COUNT(DISTINCT "Customer ID") AS total_segment_customers,
  COUNT(DISTINCT "Order ID") AS total_segment_orders,
  SUM(Quantity) AS total_segment_quantity,
  SUM(Sales) AS total_segment_sales,
  SUM(Profit) AS total_segment_profits
  
FROM superstore_data

GROUP BY Segment