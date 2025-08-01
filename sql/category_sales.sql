SELECT
  Category,
  "Sub-Category",
  SUM(Sales) AS sub_catefory_sales,
  SUM(Profit) AS sub_category_profit,
  COUNT(DISTINCT "Order ID") AS sub_category_distinct_orders
  
  FROM superstore_data

GROUP BY Category, "Sub-Category"
ORDER BY Category, "Sub-Category"