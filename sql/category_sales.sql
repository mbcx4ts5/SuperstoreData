SELECT
  Category,
  "Sub-Category",
  SUM(Sales) AS sub_category_sales,
  SUM(Quantity) AS sub_category_quantity,
  SUM(Profit) AS sub_category_profit,
  COUNT(DISTINCT "Order ID") AS sub_category_distinct_orders
  
  FROM superstore_data

GROUP BY Category, "Sub-Category"
ORDER BY sub_category_sales DESC, sub_category_quantity