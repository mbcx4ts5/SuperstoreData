SELECT
  "Ship Mode",
  AVG(Profit) AS average_profit
  
FROM superstore_data

GROUP BY "Ship Mode"
ORDER BY average_profit DESC