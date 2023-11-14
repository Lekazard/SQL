CREATE PROCEDURE NostaHintoja
AS
BEGIN TRANSACTION
    DECLARE @MaxPrice MONEY = 50;
    UPDATE Products
    SET UnitPrice = UnitPrice * 1.10
    WHERE UnitPrice < @MaxPrice;

    SELECT TOP 10 ProductName, UnitPrice
    FROM Products;

COMMIT
