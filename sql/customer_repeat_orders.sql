SELECT
  "Customer ID",
  "Customer Name",
  "Segment",
  COUNT(DISTINCT "Order ID") AS orders_per_customer
  
  FROM superstore_data

GROUP BY "Customer ID", "Customer Name"
ORDER BY orders_per_customer DESC