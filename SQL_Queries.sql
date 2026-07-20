-- Retail Sales Analytics Dashboard - SQL Queries

SELECT * FROM Superstore;

SELECT SUM(Sales) AS TotalSales FROM Superstore;
SELECT SUM(Profit) AS TotalProfit FROM Superstore;
SELECT COUNT(DISTINCT [Order ID]) AS TotalOrders FROM Superstore;
SELECT COUNT(DISTINCT [Customer ID]) AS TotalCustomers FROM Superstore;

SELECT Category, SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT [Sub-Category], SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY [Sub-Category]
ORDER BY TotalSales DESC;

SELECT Region, SUM(Profit) AS TotalProfit
FROM Superstore
GROUP BY Region
ORDER BY TotalProfit DESC;

SELECT TOP 10 [Customer Name], SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY [Customer Name]
ORDER BY TotalSales DESC;

SELECT YEAR([Order Date]) AS SalesYear,
       MONTH([Order Date]) AS SalesMonth,
       SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY YEAR([Order Date]), MONTH([Order Date])
ORDER BY SalesYear, SalesMonth;
