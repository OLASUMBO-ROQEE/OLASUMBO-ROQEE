SELECT TOP (1000) [OrderID]
      ,[Customer_Id]
      ,[Product]
      ,[Region]
      ,[OrderDate]
      ,[Quantity]
      ,[UnitPrice]
      ,[sales]
  FROM [sales_data].[dbo].[LITA Capstone dataset]


  SELECT * FROM [sales_data].[dbo].[LITA Capstone dataset]

  SELECT 
    Product, 
    SUM(sales) AS TotalSales
FROM 
    [dbo].[LITA Capstone dataset]
GROUP BY 
    Product

	SELECT 
    Region, 
    COUNT(OrderID) AS TransactionCount
FROM 
    [dbo].[LITA Capstone dataset]
GROUP BY 
    Region

	SELECT TOP 1 
    Product, 
    SUM(sales) AS TotalSales
FROM 
    [dbo].[LITA Capstone dataset]
GROUP BY 
    Product
ORDER BY 
    TotalSales DESC

	SELECT 
    Product, 
    SUM(sales) AS TotalRevenue
FROM 
    [dbo].[LITA Capstone dataset]
GROUP BY 
    Product

	SELECT 
    YEAR(OrderDate) AS Year, 
    MONTH(OrderDate) AS Month, 
    SUM(sales) AS MonthlySales
FROM 
    [dbo].[LITA Capstone dataset]
WHERE 
    YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY 
    YEAR(OrderDate), MONTH(OrderDate)
ORDER BY 
    Month


	
	SELECT TOP 5 
    Customer_Id, 
    SUM(Quantity * UnitPrice) AS TotalPurchase
FROM 
    [dbo].[LITA Capstone dataset]
GROUP BY 
    Customer_Id
ORDER BY 
    TotalPurchase DESC


	WITH RegionSales AS (
    SELECT 
        Region, 
        SUM(sales) AS TotalSales
    FROM 
        [dbo].[LITA Capstone dataset]
    GROUP BY 
        Region
), TotalSales AS (
    SELECT SUM(TotalSales) AS GrandTotal FROM RegionSales
)
SELECT 
    RS.Region, 
    RS.TotalSales, 
    (RS.TotalSales * 100.0 / TS.GrandTotal) AS SalesPercentage
FROM 
    RegionSales RS, TotalSales TS


	SELECT 
    DISTINCT Product
FROM 
    [dbo].[LITA capstone dataset]
WHERE 
    Product NOT IN (
        SELECT Product
        FROM [dbo].[LITA Capstone dataset]
        WHERE OrderDate >= DATEADD(QUARTER, -1, GETDATE()))
    
