SELECT
  CAST(
    SUBSTR("Order Date", LENGTH("Order Date") - 3) AS INTEGER
  ) AS year,
  CAST(
    SUBSTR("Order Date", 1, INSTR("Order Date",'/') - 1) AS INTEGER
  ) AS month,
  SUM(Sales) AS monthly_sales,
  SUM(Profit) AS monthly_profit,
  COUNT(DISTINCT "Order ID") AS monthly_distinct_orders
FROM superstore_data

GROUP BY year, month
ORDER BY year, month