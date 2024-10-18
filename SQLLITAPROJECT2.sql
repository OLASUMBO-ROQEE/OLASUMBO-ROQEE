SELECT TOP (1000) [CustomerID]
     
  FROM [customer_data].[dbo].[LITA Capstone data]


SELECT * FROM [customer_data].[dbo].[LITA Capstone data]

SELECT Region, COUNT(CustomerID) AS TotalCustomers
FROM [dbo].[LITA capstone data]
GROUP BY Region

SELECT TOP 1 SubscriptionType, COUNT(CustomerID) AS TotalCustomers
FROM [dbo].[LITA capstone data]
GROUP BY SubscriptionType
ORDER BY TotalCustomers DESC

SELECT CustomerID, CustomerName, DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS SubscriptionDurationMonths
FROM [dbo].[LITA capstone data]
WHERE Canceled = 1 
AND DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) <= 6

SELECT AVG(DATEDIFF(DAY, SubscriptionStart, SubscriptionEnd)) / 30.0 AS AvgSubscriptionDurationMonths
FROM [dbo].[LITA capstone data]



SELECT CustomerID, CustomerName, DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS SubscriptionDurationMonths
FROM [dbo].[LITA capstone data]
WHERE DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) > 12


SELECT SubscriptionType, SUM(Revenue) AS TotalRevenue
FROM [dbo].[LITA capstone data]
GROUP BY SubscriptionType


SELECT TOP 3 Region, COUNT(CustomerID) AS CanceledSubscriptions
FROM [dbo].[LITA capstone data]
WHERE Canceled = 1
GROUP BY Region
ORDER BY CanceledSubscriptions DESC


SELECT 
    SUM(CASE WHEN Canceled = 0 THEN 1 ELSE 0 END) AS ActiveSubscriptions,
    SUM(CASE WHEN Canceled = 1 THEN 1 ELSE 0 END) AS CanceledSubscriptions
FROM [dbo].[LITA capstone data]

