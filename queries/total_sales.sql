-- Total Sales & Profit
SELECT 
	ROUND(SUM(Sales), 3) AS Total_Sales,
	ROUND(SUM(Profit), 3) AS Total_Profit
FROM superstore;

