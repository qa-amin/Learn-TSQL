USE MyDB;
GO

/*
مشاهده فهرست کارمندانی که با مشتری 71 ثبت سفارش داشته اند
طبیعی است که یکی کارمند برای یک مشتری چندین ثبت سفارش را انجام داده باشد
*/

SELECT
	EmployeeID 
FROM dbo.Orders
	WHERE CustomerID = 71;
GO

/*
DISTINCT
عدم در نظر گرفتن مقادیر تکراری
*/

SELECT
	DISTINCT EmployeeID
FROM dbo.Orders
	WHERE CustomerID = 71;

GO

/*
مشاهده فهرست کارمندانی که با مشتری 71 ثبت سفارش داشته اند به همراه سال ثب سفارش
تکرار رکورد ها
*/

SELECT
	EmployeeID, YEAR(OrderDate) AS OrderYear
FROM dbo.Orders
	WHERE CustomerID = 71
ORDER BY EmployeeID;
GO


--	بر روی بیش از یک ستون DISTINCT عملیات 

SELECT
	DISTINCT EmployeeID, YEAR(OrderDate) AS OrderYear
FROM dbo.Orders
	WHERE CustomerID = 71
ORDER BY EmployeeID;
GO

/*
 DISTINCTیک چالش در 

  هم آورده شود SELECT است باید در OREDER BY استفاده می کنیم،آن چیزی که در  ORDER BY و  DISTINCT هنگامی که از 
*/

SELECT
	DISTINCT State, EmployeeID  -- DISTINCT State == Error
FROM dbo.Employees
ORDER BY EmployeeID;
GO