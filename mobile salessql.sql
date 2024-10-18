#SELECT *  FROM mobile_data.`mobile_sales_data(1)`
#where Brand = "Green Inc"
#where CustomerGender = "Female"
#where MobileModel = "direction"
#where CustomerAge >50
#where PaymentMethod = "Debit Card"
#where LOCATION = "Joetown"
#SELECT MobileModel,PaymentMethod  FROM mobile_data.`mobile_sales_data(1)`
#SELECT *  FROM mobile_data.`mobile_sales_data(1)`
#where CustomerAge <50
#where PaymentMethod = "Debit Card" AND UnitsSold >50
#SELECT distinct(BRAND),TotalRevenue FROM mobile_data.`mobile_sales_data(1)`
#SELECT *  FROM mobile_data.`mobile_sales_data(1)` 
#WHERE MobileModel = "laptop" OR Price = 10
SELECT *  FROM mobile_data.`mobile_sales_data(1)`
where (brand= "Brown and Sons" or Brand ="Greer and Sons") AND CustomerAge >30;