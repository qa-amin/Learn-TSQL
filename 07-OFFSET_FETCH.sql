USE MyDB;
GO
/*
 OFFSET
 FETCH
*/


-- نمایش 10 سفارش ثبت شده اخیر

SELECT
	TOP 10 OrderID, OrderDate, CustomerID, EmployeeID
FROM dbo.Orders
ORDER BY OrderDate DESC;
GO

--OFFSET FETCH معادل کوئری بالا با استفاده از 

SELECT
	 OrderID, OrderDate, CustomerID, EmployeeID
FROM dbo.Orders
ORDER BY OrderDate DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
GO

/*
جدیدترین پنج سفارش پس از 10 سفارش اخیر
یعنی سفارش های 11 تا 15
*/

SELECT
	OrderID, OrderDate, CustomerID, EmployeeID
FROM dbo.Orders
ORDER BY OrderDate DESC
OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY;
GO

-- نادیده گرفتن 10 سفارش ابتدایی از لیست رکورد ها برا اساس نوع مرتب سازی و نمایش سایر رکورد ها
 
 SELECT
	OrderID, OrderDate, CustomerID, EmployeeID
 FROM dbo.Orders
 ORDER BY OrderDate DESC, OrderID DESC
 OFFSET 10 ROWS;
 GO

 /*
قابل اجرا استFETCH بدون  OFFSET 
 ولی برعکس نه
 */