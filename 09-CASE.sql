USE MyDB;
GO





-- لیست تمامی محصولات
SELECT	
	ProductID, ProductName, CategoryID
FROM dbo.Products;
GO

-- simple CASE
SELECT
	ProductID, ProductName, CategoryID,
	CASE CategoryID
		WHEN 1 THEN N'نوشیدنی'
		WHEN 2 THEN N'ادویه جات'
		WHEN 3 THEN N'مرباجات'
		WHEN 4 THEN N'محصولات لبنی'
		WHEN 5 THEN N'حبوبات'
		WHEN 6 THEN N'گوشت و مرغ'
		WHEN 7 THEN N'ارگانیک'
		WHEN 8 THEN N'دریایی'
		ELSE N'متفرقه'
	END AS CategoryName

FROM dbo.Products
ORDER BY CategoryName;
GO

-- محصولات براساس قیمت پایه
SELECT
	ProductID, UnitPrice
FROM dbo.OrderDetails;
GO

-- serched CASE
/*
CASE
	WHEN {} ... THEN ...
	ELSE ...
END
*/

SELECT ProductID, UnitPrice,
	CASE 
		WHEN UnitPrice < 50 THEN N'کمتر از 50'
		WHEN UnitPrice BETWEEN 50 AND 100 THEN N'بین 50 تا 100'
		WHEN UnitPrice > 100 THEN N'بیشتر از 100'
		ELSE N'نامشخص'
	END AS UnitPriceCategory
FROM dbo.OrderDetails
ORDER BY UnitPrice;
GO

SELECT
	EmployeeID, FirstName, TitleofCourtesy,
	CASE	
		WHEN TitleofCourtesy IN ('Ms.','Mrs.') THEN 'Female'
		WHEN TitleofCourtesy = 'Mr.' THEN 'Male'
		ELSE 'Unknown'
	END AS Gender
FROM dbo.Employees;
GO

-- نباشد چه می شود؟ ELSE اگر
-- می شوند NULL صدق نکنند  WHEN مقادیری که در 

SELECT
	EmployeeID, FirstName, TitleofCourtesy,
	CASE	
		WHEN TitleofCourtesy IN ('Ms.','Mrs.') THEN 'Female'
	END AS Gender
FROM dbo.Employees;
GO

--در ابتدا می آید  NUll در زمان مرتب سازی  

SELECT
	CustomerID, Region
FROM dbo.Customers;
GO
-- استفاده می کنیم ORDER BY در  CASE برای رفع مشکل بالا از 
SELECT
	CustomerID, Region
FROM dbo.Customers
ORDER BY
	CASE WHEN Region IS NULL THEN 1 ELSE 0 END, Region;
GO

