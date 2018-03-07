DROP DATABASE IF EXISTS mod4;
CREATE DATABASE mod4;
USE mod4;

CREATE TABLE Customer (
  ID INT Not Null PRIMARY KEY  AUTO_INCREMENT,
  Name VARCHAR(18) NOT NULL,    
  City VARCHAR(18) NOT NULL,    
  State CHAR(2) NOT NULL,	
  Sales DECIMAL(16,2) NOT NULL,
  Active BIT (1) NOT NULL
);

Insert Customer (Name, City, State, Sales, Active) Values ('Acme
inc','Jersey City', 'NJ',14381891,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Widget
Corp','Seattle','WA' ,97865829,1);
Insert Customer (Name, City, State, Sales, Active) Values ('123
Warehousing','Los Angeles','CA',77503710,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo
Company', 'Columbus','OH',74647541,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Smith and
Co.','Honolulu', 'HI', 36046590,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Foo
Bars', 'Fresno', 'CA' ,39912857,1);
Insert Customer (Name, City, State, Sales, Active) Values ('ABC
Telecom', 'Birmingham', 'AL',31149083,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Fake
Brothers','Stockton','CA',31226191,1);
Insert Customer (Name, City, State, Sales, Active) Values ('QWERTY
Logistics','Lubbock','TX',17226905,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo
Inc.','Las Vegas','NV',69551557,1);