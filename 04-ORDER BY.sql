USE MyDB;
GO

-- EmployeID مرتب سازی بر روی ستون 
SELECT 
	EmployeeID, YEAR(OrderDate) AS OrderYear
FROM dbo.Orders
	WHERE CustomerID = 71
ORDER BY EmployeeID ;   -- ASC DESC
GO

SELECT
	EmployeeID, YEAR(OrderDate) AS OrderYear
FROM dbo.Orders
	WHERE CustomerID = 71
ORDER BY OrderYear DESC;
GO

-- مرتب سازی بر روی دو ستون

SELECT 
	EmployeeID, Region, City
FROM dbo.Employees
ORDER BY Region, City;
GO

-- شرکت داده نشده اندSELECT مرتب سازی بروی ستونی که در  
SELECT
	EmployeeID, FirstName, LastName
FROM dbo.Employees
ORDER BY City;
GO