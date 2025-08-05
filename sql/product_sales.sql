SELECT
  "Product ID",
  "Product Name",
  "Category",
  "Sub-Category",
  SUM(Sales) AS product_total_sales,
  SUM(Profit) AS product_total_profit,
  SUM(quantity) AS product_total_quantity
  FROM superstore_data

GROUP BY "Product ID", "Product Name"
ORDER BY product_total_sales DESC
