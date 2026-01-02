-- Loss-making orders
SELECT 
	"Order ID",
	"Product Name",
	Sales,
	Profit
FROM superstore
WHERE Profit < 0
ORDER BY Profit;
	
	