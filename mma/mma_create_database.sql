
-- create and select the database
DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;

-- create the Product table
CREATE TABLE Product (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Code VARCHAR(10) NOT NULL UNIQUE,
  Description VARCHAR(255) NOT NULL,
  ListPrice DECIMAL(10,2) NOT NULL
);
-- Creat Invoice
Create Table Invoice (
ID Int Primary Key Auto_Increment,
OrderNumber VARCHAR(25) Unique Not Null,
CustomerName VARCHAR(50) Not Null,
OrderDate Date Not null,
Total Decimal(10,2)
);
-- Create LineItem
Create Table LineItem (
ID Int Primary Key Auto_Increment,
InvoiceId Int Not Null,
ProductID Int Not Null,
Quantity Int Not Null,

Foreign Key (InvoiceID) References Invoice (ID),
Foreign Key (ProductID) References Product (ID)
);

-- insert some rows into the Product table
INSERT INTO Product VALUES 
(1, 'java', 'Murach''s Java Programming', '57.50'),
(2, 'jsp', 'Murach''s Java Servlets and JSP', '57.50'),
(3, 'mysql', 'Murach''s MySQL', '54.50'),
(4, 'android', 'Murach''s Android Programming', '57.50'),
(5, 'html5', 'Murach''s HTML5 and CSS3', '54.50'),
(6, 'oracle', 'Murach''s Oracle and PL/SQL', '54.50'),
(7, 'javascript', 'Murach''s JavaScript and jQuery', '54.50'),
(8,'php','Murach\'s PHP','54.50'),
(9,'C#','Murach\'s C# 2012','54.50'),
(10,'D#','Murach\'s D#','36.70'),
(11,'E#','Murach\'s E#','40.40'),
(12,'test','test','10.00');

-- "Example Join Table
-- Select OrderNumber, CustomerName, OrderDate,
	-- InvoiceID, sum(b.Quantity*c.ListPrice) 
-- as InvoiceTotal
-- from invoice a, lineitem b, product c
 -- where a.id = 1
-- and a.id = b.InvoiceId
-- and b.ProductID = c.Id
-- group by a.ID" 

-- "FOREIGN KEY (InvoiceID) REFERENCES Invoice (ID),
-- FOREIGN KEY (ProductID) REFERENCES Product (ID)"

-- insert some test data for invoice and line item, based on products above
-- INSERT INTO Invoice VALUES
-- (1, 'SB0001', 'Sean Blessing', '2018-03-08', 0);

-- INSERT INTO LineItem VALUES
-- (1, 1, 7, 5),
-- (2, 1, 5, 10);
