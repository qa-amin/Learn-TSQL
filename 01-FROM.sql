USE MyDB
GO
-- order مشاهده برخی از فیلد های جدول 
SELECT 
	OrderId, CustomerID, EmployeeID, OrderDate
FROM dbo.Orders;
GO

-- FROM در بخش  Alias استفاده از  
SELECT
	O.OrderID, O.CustomerID, O.EmployeeID, O.OrderID
FROM dbo.Orders AS O;
GO