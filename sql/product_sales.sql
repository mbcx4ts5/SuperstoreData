SELECT
  "Product ID",
  "Product Name",
  "Catefory",
  "Sub-Category",
  SUM(Sales) AS product_total_sales,
  SUM(Profit) AS product_total_profit
  
  FROM superstore_data

GROUP BY "Product ID", "Product Name"
ORDER BY product_total_sales DESC
