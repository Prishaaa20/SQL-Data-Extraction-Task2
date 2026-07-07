-- 1. SELECT
SELECT * FROM orders LIMIT 5;

-- 2. WHERE
SELECT * FROM orders
WHERE Sales > 500;

-- 3. ORDER BY
SELECT * FROM orders
ORDER BY Profit DESC
LIMIT 10;

-- 4. GROUP BY
SELECT Category,
SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category;

-- 5. HAVING
SELECT Category,
SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category
HAVING SUM(Sales) > 100000;

-- 6. Subquery
SELECT *
FROM orders
WHERE Sales > (
SELECT AVG(Sales)
FROM orders
)
LIMIT 10;

-- 7. CTE
WITH SalesSummary AS
(
SELECT Category,
SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category
)
SELECT * FROM SalesSummary;

-- 8. Top 5 Sub-Categories
SELECT "Sub-Category",
SUM(Sales) AS TotalSales
FROM orders
GROUP BY "Sub-Category"
ORDER BY TotalSales DESC
LIMIT 5;

-- 9. Region-wise Profit
SELECT Region,
SUM(Profit) AS TotalProfit
FROM orders
GROUP BY Region;

-- 10. Highest Profit States
SELECT State,
SUM(Profit) AS TotalProfit
FROM orders
GROUP BY State
ORDER BY TotalProfit DESC
LIMIT 10;
