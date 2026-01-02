-- Sales by Category
SELECT 
	Category, 
	ROUND(SUM(Sales), 3) AS Sales
FROM superstore
GROUP BY Category
ORDER BY Sales DESC;