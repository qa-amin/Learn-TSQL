USE MyDB;
GO

-- Order مشاهده تمامی سفارشات مشتری کد 71 از جدول 
SELECT 
	OrderID, CustomerID
FROM dbo.Orders
	WHERE CustomerID = 71;
GO

/*
 IN گزاره  
 نمایش رکورد ها براساس لیست های مشخص
*/

-- 10248,10253,مشاهده مشخصات سفارش ها با یکی از کدهای 10320
SELECT
	OrderID, OrderDate
FROM dbo.Orders
	WHERE OrderID IN (10248, 10253, 10320);
GO

-- NOT IN
SELECT
	OrderID, OrderDate
FROM dbo.Orders
	WHERE OrderID NOT IN (10248, 10253, 10320);
GO


/*
 BETWEEN اپراتور
 نمایش رکورد ها براساس محدوده ای مشخص
*/

--Order مشاهده سفارش ثب شده توسط یکی از کارمندانی که کد آن ها از 3 تا 7 است از جدول	

SELECT
	OrderID, EmployeeID
FROM dbo.Orders
	WHERE EmployeeID BETWEEN 3 AND 7;
GO

-- IN معادل کوئری بالا با دستور 
SELECT
	OrderID, EmployeeID
FROM dbo.Orders
	WHERE EmployeeID IN (3, 4, 5, 6, 7);
GO

/*
LIKE اپراتور 
%
_
[]
[^]
*/

-- کارمندانی که نام خانوادگی آن ها با حرف الف شروع می شود

SELECT
	FirstName, LastName
FROM dbo.Employees
	WHERE LastName LIKE N'ا%';
GO

-- کارمندانی که نام خانوادگی آن ها با حرف الف شروع نمی شود
SELECT
	FirstName, LastName
FROM dbo.Employees
	WHERE LastName  LIKE N'[^ا]%';
GO

-- معادل کوئری بالا

SELECT
	FirstName, LastName
FROM dbo.Employees
	WHERE LastName NOT LIKE N'ا%';
GO

-- کارمندانی که نام خانوادگیشان به ی ختم می شود

SELECT
	FirstName, LastName
FROM dbo.Employees
	WHERE LastName LIKE N'%ی';
GO

-- کارمندانی که نام خانوادگیشان با یکی از حرف الف تا پ شروع می شود

SELECT
	FirstName, LastName
FROM dbo.Employees
	WHERE LastName LIKE N'[ا-پ]%';
GO

-- کارمندانی که نام آن ها سه کاراکتری است و با س شروع می شود
SELECT
	FirstName, LastName
FROM dbo.Employees
	WHERE FirstName LIKE N'س__';
GO
 /*
 اپراتور های مقایسه ای
 =  <  <=  >  >=  <>  !=
 */

 -- Order مشاهده تمامی سفارش ها از یک تاریخ مشخص به بعد از جدول  

 SELECT
	OrderID, EmployeeID, OrderDate
 FROM dbo.Orders
	WHERE OrderDate >= '20160430';
GO

--که صرفا توسط کارمندان یک،دو یا سه ثبت شده باشندOrder مشاهده تمامی سفارش ها از یک تاریخ مشخص به بعد از جدول

SELECT
	OrderID, EmployeeID, OrderDate
FROM dbo.Orders
	WHERE OrderDate >= '20160430'
	AND
	EmployeeID IN (1, 2, 3);
GO
