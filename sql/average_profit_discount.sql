SELECT
  Discount,
  AVG(Profit) AS average_profit
  
FROM superstore_data

GROUP BY Discount
ORDER BY Discount