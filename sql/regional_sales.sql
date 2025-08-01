SELECT
  Region,
  State,
  SUM(Sales) AS regional_sales,
  SUM(Profit) AS regional_profit,
  AVG(Discount) AS regional_average_discount,
  COUNT(DISTINCT "Order ID") AS regional_distinct_orders
  FROM superstore_data

GROUP BY Region, State
ORDER BY Region, State