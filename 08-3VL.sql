USE MyDB;
GO

-- Accept TRUE
SELECT
	CustomerID, State, Region, City
FROM dbo.Customers
	WHERE Region = N'جنوب';
GO

SELECT  -- 91 record - 1 record = 90 record  but	output is 31 !!!!!!!!
	CustomerID, State, Region, City
FROM dbo.Customers
	WHERE Region <> N'جنوب';
GO
-- NULL آن ها برابر است با  Region فهرست مشتریانی که مقدار 
SELECT
	CustomerID, State, Region, City
FROM dbo.Customers
	WHERE  Region IS NULL;
GO

-- آن ها صرفا جنوب نیست Region فهرست مشتریانی که مقدار فیلد

SELECT
	CustomerID, State, Region, City
FROM dbo.Customers
	WHERE Region <> N'جنوب'
	OR
	Region IS NULL;
GO

/*
ISNULL تابع
بایک مقدار مشخص NULL جایگزین کردن مقدار 

ISNULL(var,'every thing')
*/

-- آن ها صرفا جنوب نیست Region فهرست مشتریانی که مقدار فیلد
SELECT 
	CustomerID, State, Region, City
FROM dbo.Customers
	WHERE ISNULL(Region,'') <> N'جنوب';
GO