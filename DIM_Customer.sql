-- Cleansed DIM_Customer Table --
SELECT 
c.CustomerKey AS CustomerKey,
  --    ,[GeographyKey]
  --    ,[CustomerAlternateKey]
  --    ,[Title]
c.FirstName AS [First Name],
--      ,[MiddleName]
c.LastName AS [Last Name],
c.firstName+' '+ LastName AS [Full Name],
-- Combined First and Last Name
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
Case c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
c.datefirstpurchase AS DateFirstPurchase,
--      ,[CommuteDistance]
g.City AS [Customer City]
-- Joined in Customer City from Geography Table
FROM 
[AdventureWorksDW2019].[dbo].[DimCustomer] AS c
LEFT Join [AdventureWorksDW2019].[dbo].[DimGeography] AS g 
ON g.GeographyKey = c.GeographyKey
ORDER BY
CustomerKey ASC -- Ordered List by CustomerKey

