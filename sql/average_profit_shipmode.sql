-- Get a table where profits are ranked by ship mode
WITH RankedProfits AS (
  SELECT
    "Ship Mode",
    "Profit",
    ROW_NUMBER() OVER (
      PARTITION BY "Ship Mode" ORDER BY "Profit"
    ) AS row_num,
    COUNT(*) OVER (PARTITION BY "Ship Mode") AS total_by_shipmode

	  FROM superstore_data
),

-- Get a table of percentiles by dividing ranked row_um by count
Percentiles AS (
  SELECT
    *,
    1.0 * row_num / total_by_shipmode AS percentile_rank
	
    FROM RankedProfits
)

SELECT
  "Ship Mode",
  
  -- Get Min, Max and Average
  MIN(Profit) AS min_profit,
  MAX(Profit) AS max_profit,
  AVG(Profit) AS average_profit,
  
  -- Median (50th percentile)
  (SELECT Profit FROM Percentiles p2
    WHERE p1."Ship Mode" = p2."Ship Mode"  --ensure same ship mode
	-- Find the smallest different been percentile rank and 0.5, ie the difference equal to the minimum
	  AND ABS(percentile_rank - 0.5) = (
       SELECT MIN(ABS(percentile_rank - 0.5))
       FROM Percentiles
       WHERE "Ship Mode" = p1."Ship Mode")
   LIMIT 1) AS median_profit,
  
  -- 25th Percentile
  (SELECT Profit FROM Percentiles p2
    WHERE p1."Ship Mode" = p2."Ship Mode"
	  AND ABS(percentile_rank - 0.25) = (
       SELECT MIN(ABS(percentile_rank - 0.25))
         FROM Percentiles
         WHERE "Ship Mode" = p1."Ship Mode"
	  )
   LIMIT 1) AS q1_profit,
   
   --75th Percentile
   (SELECT Profit FROM Percentiles p2
    WHERE p1."Ship Mode" = p2."Ship Mode"
	  AND ABS(percentile_rank - 0.75) = (
       SELECT MIN(ABS(percentile_rank - 0.75))
       FROM Percentiles
       WHERE "Ship Mode" = p1."Ship Mode")
   LIMIT 1) AS q3_profit
  
  FROM Percentiles p1
 
GROUP BY "Ship Mode"
ORDER BY "Ship Mode"
