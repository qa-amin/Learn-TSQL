use MyDB;
GO

-- SELECT بدون جدول
SELECT
	N'امین';
GO
-- Order انتخاب تمامی ستون های جدول

SELECT 
	*
FROM dbo.Orders;
GO
/*
	Alias
	<expression> AS <alias>   
	<expression> <alias>
	<alias> = <expression>
*/

-- <expression> AS <alias>

SELECT 
	EmployeeID, YEAR(OrderDate) AS OrderYear
FROM dbo.Orders;

