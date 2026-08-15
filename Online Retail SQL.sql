SELECT TOP 10
    Description,
    SUM(Quantity) AS TotalQuantitySold
FROM dbo.online_retail_cleaned
GROUP BY Description
ORDER BY TotalQuantitySold DESC

SELECT TOP 10
    Country,
    SUM(TotalPrice) AS TotalRevenue
FROM dbo.online_retail_cleaned
GROUP BY Country
ORDER BY TotalRevenue DESC

SELECT
    Month,
    SUM(TotalPrice) AS MonthlyRevenue,
    COUNT(DISTINCT InvoiceNo) AS NumberOfOrders
FROM dbo.online_retail_cleaned
GROUP BY Month
ORDER BY Month

SELECT TOP 10
    CustomerID,
    SUM(TotalPrice) AS TotalSpent,
    COUNT(DISTINCT InvoiceNo) AS NumberOfOrders
FROM dbo.online_retail_cleaned
GROUP BY CustomerID
ORDER BY TotalSpent DESC

DELETE FROM dbo.online_retail_cleaned
WHERE Quantity > 5000;

