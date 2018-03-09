DROP DATABASE IF EXISTS bigbox;
CREATE DATABASE bigbox;
USE bigbox; 

CREATE TABLE Division (
ID Int Not Null Primary Key Auto_Increment,
DivisionNumber Varchar(50) Unique,
DivisionName varchar(50)
);

CREATE TABLE Store (
ID Int Primary Key Auto_Increment,
DivisionID Int Not Null,
StoreNumber Varchar(5) Not Null, 
StoreName Varchar(50) NOT Null,
CONSTRAINT unq_div_store UNIQUE(DivisionID, StoreNumber),	
Foreign Key (DivisionID) References Division(ID)
);
CREATE TABLE StoreSales (
ID Int Not Null Primary Key Auto_Increment,
StoreID Int Not Null, 
Date Date Not Null,
Sales Decimal (10,2) Not Null,
Foreign Key (StoreID) References Store(ID)
);
 
 -- insert some rows into the Stores table
INSERT INTO Division VALUES 
(1, '001', 'Cincinnati Division Office'),
(2, '111', 'Louisville Division Office');

-- insert some rows into the Stores table
INSERT INTO Store VALUES 
(1, 1, '00011', 'Mason Big Box'),
(2, 1, '00255', 'Downtown Big Box'),
(3, 1, '00172', 'Goshen Big Box'),
(4, 1, '00075', 'Bridgetown Big Box'),
(5, 2, '00011', 'Louisville Big Box'),
(6, 2, '00044', 'Riverfront Big Box');

-- insert some rows into the Store_Sales table
INSERT INTO StoreSales (StoreID, Date, Sales) VALUES
(1, '2018-01-01', 3445555.89),
(1, '2018-01-08', 3445555.89),
(1, '2018-01-15', 3445555.89),
(1, '2018-01-22', 3445555.89),
(2, '2018-01-01', 3444433.33),
(2, '2018-01-08', 3444433.33),
(2, '2018-01-15', 3444433.33),
(2, '2018-01-22', 3444433.33),
(2, '2018-01-29', 3444433.33),
(3, '2018-01-01', 4555543.66),
(3, '2018-01-08', 4555543.66),
(3, '2018-01-15', 4555543.66),
(3, '2018-01-22', 4555543.66),
(3, '2018-01-29', 4555543.66),
(3, '2018-02-05', 4555543.66),
(3, '2018-02-12', 4555543.66),
(4, '2018-01-01', 3444555.99),
(4, '2018-01-08', 3444555.99),
(5, '2018-01-15', 7668944.33),
(5, '2018-01-22', 7668944.33),
(5, '2018-01-29', 7668944.33),
(5, '2018-02-05', 7668944.33),
(6, '2018-01-01', 8777655.33),
(6, '2018-01-08', 8777655.33),
(6, '2018-01-15', 8777655.33);
-- "Example Join Table
-- Select OrderNumber, CustomerName, OrderDate,
	-- InvoiceID, sum(b.Quantity*c.ListPrice) 
-- as InvoiceTotal
-- from invoice a, lineitem b, product c
 -- where a.id = 1
-- and a.id = b.InvoiceId
-- and b.ProductID = c.Id
-- group by a.ID" 