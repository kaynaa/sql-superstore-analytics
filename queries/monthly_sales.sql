WITH t AS (
  SELECT
    "Order Date" AS raw,
    instr("Order Date", '/') AS slash,
    substr("Order Date", instr("Order Date", '/') + 1) AS rest,
	Sales
  FROM superstore
),
parsed AS (
  SELECT
    substr(raw, 1, slash - 1) AS m,
    substr(rest, 1, instr(rest, '/') - 1) AS d,
    substr(rest, instr(rest, '/') + 1) AS y,
	Sales
  FROM t
)
SELECT
  strftime('%Y-%m', date(printf('%04d-%02d-%02d', y, m, d))) AS Month,
  SUM(Sales) AS Monthly_Sales
FROM parsed
GROUP BY Month
ORDER BY Month;
