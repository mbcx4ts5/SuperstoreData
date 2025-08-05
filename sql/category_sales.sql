--Used to find the top 5 most and least profitable categories
--as well as Sales by Category donut chart, the Sub-Category Profit vs
--Sales scatter and Total Products Sold bar chart in Product Analysis.

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