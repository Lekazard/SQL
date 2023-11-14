-- Taulu Customers
CREATE TABLE Customers (
	CustomerID CHAR(5) NOT NULL ,
	CompanyName VARCHAR(40) NOT NULL ,
	ContactName VARCHAR(30) NULL ,
	ContactTitle VARCHAR(30) NULL ,
	Address VARCHAR(60) NULL ,
	City VARCHAR(15) NULL ,
	Region VARCHAR(15) NULL ,
	PostalCode VARCHAR(10) NULL ,
	Country VARCHAR(15) NULL ,
	Phone VARCHAR(24) NULL ,
	Fax VARCHAR(24) NULL ,
	CONSTRAINT PK_Customers PRIMARY KEY (CustomerID)
);

INSERT INTO Customers VALUES
('ALFKI','Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321','030-0076545'),
('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la Constitución 2222','México D.F.',NULL,'05021','Mexico','(5) 555-4729','(5) 555-3745'),
('ANTON','Antonio Moreno Taquería','Antonio Moreno','Owner','Mataderos  2312','México D.F.',NULL,'05023','Mexico','(5) 555-3932',NULL);

-- Taulu Products
CREATE TABLE Products (
	ProductID INT IDENTITY (1, 1) NOT NULL ,
	ProductName VARCHAR(40) NOT NULL ,
	SupplierID INT NULL ,
	CategoryID INT NULL ,
	QuantityPerUnit VARCHAR(20) NULL ,
	UnitPrice MONEY DEFAULT (0),
	UnitsInStock SMALLINT DEFAULT (0),
	UnitsOnOrder SMALLINT DEFAULT (0),
	ReorderLevel SMALLINT DEFAULT (0),
	Discontinued BIT NOT NULL DEFAULT (0),
	CONSTRAINT PK_Products PRIMARY KEY (ProductID),
	CONSTRAINT CK_Products_UnitPrice CHECK (UnitPrice >= 0),
	CONSTRAINT CK_ReorderLevel CHECK (ReorderLevel >= 0),
	CONSTRAINT CK_UnitsInStock CHECK (UnitsInStock >= 0),
	CONSTRAINT CK_UnitsOnOrder CHECK (UnitsOnOrder >= 0)
);

SET IDENTITY_INSERT Products ON;

INSERT INTO Products(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Chai',1,1,'10 boxes x 20 bags',18,39,0,10,0),
('Chang',1,1,'24 - 12 oz bottles',19,17,40,25,0),
('Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,0),
('Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,0);

SET IDENTITY_INSERT Products OFF;
