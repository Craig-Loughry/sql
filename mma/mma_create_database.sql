
-- create and select the database
DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;

-- create the Product table
CREATE TABLE Product (
  ProductID      INT            PRIMARY KEY  AUTO_INCREMENT,
  Code           VARCHAR(10)    NOT NULL     UNIQUE,
  Description    VARCHAR(255)   NOT NULL,
  ListPrice      DECIMAL(10,2)  NOT NULL
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
(9,'php','Murach\'s PHP','54.50'),
(10,'C#','Murach\'s C# 2012','54.50'),
(16,'D#','Murach\'s D#','36.70'),
(17,'E#','Murach\'s E#','40.40'),
(20,'test','test','10.00');

