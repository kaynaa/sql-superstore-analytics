-- Profit by Region
SELECT 
	Region,
	ROUND(SUM(Profit), 3) AS Profit
FROM superstore
GROUP BY Region
ORDER BY Profit DESC;