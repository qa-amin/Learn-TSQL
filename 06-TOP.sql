USE MyDB;
GO

-- فهرست تمامی سفارشات،مرتب شده بر اساس جدیدترین تاریخ

SELECT
	OrderID, OrderDate
FROM dbo.Orders
ORDER BY OrderDate DESC;
GO

-- مشاهده جدیترین پنج سفارش ثبت شده

SELECT
	TOP 5 OrderID, OrderDate
FROM dbo.Orders
ORDER BY OrderDate DESC;
GO

-- مشاهده قدیمیترین پنج سفارش ثبت شده
SELECT
	TOP 5 OrderID, OrderDate
FROM dbo.Orders
ORDER BY YEAR(OrderDate);
GO

-- انتخاب پنج درصد از جدیترین سفارش های ثبت شده

SELECT
	TOP 5 PERCENT OrderID, OrderDate
FROM dbo.Orders
ORDER BY YEAR(OrderDate) DESC;
GO

-- انتخاب پنج تا از جدیترین سفارش های ثبت شده با درنظر گرفتن سایر مقادیر برابر

SELECT
	TOP 5 WITH TIES OrderID, OrderDate
FROM dbo.Orders
ORDER BY OrderDate DESC;
GO 