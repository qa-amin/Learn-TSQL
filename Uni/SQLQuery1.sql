-- sql uni
-- sql keyvan por
USE Uni;
GO

-- مشخصات مشتری ها
SELECT *
FROM dbo.Customer;
GO
	
-- نام کلیه شعب
SELECT
	[b-name]
FROM Branch;
GO

-- مشخصات وام های پرداخت شده در شعبه کاج

SELECT *
FROM Borrow
	WHERE [b-name] = N'کاج';
GO

-- نام مشتریانی که از شعبه کاج وام گرفته اند
SELECT
	[c-name]
FROM Borrow
	WHERE [b-name] = N'کاج';
GO

-- نام مشتریانی که در شعبه کاج حساب دارند یا موجودی آن ها بیشتر از 1000 است
SELECT
	[c-name]
FROM Deposit
	WHERE [b-name] = N'کاج' OR balance > 1000;

-- نام مشتریانی که حساب ندارند
/*
برای حل این کوئری ها ابتدا مشتریانی که حساب دارند را به دست می آوریم 
می کنیم except سپس کل مشتریان را از آن 
*/