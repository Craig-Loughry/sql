DROP DATABASE IF EXISTS students;
CREATE DATABASE students;
USE students;

CREATE TABLE course (
ID Int Not Null Primary Key auto_increment,
Name  VARCHAR(25) NOT NULL UNIQUE
);
CREATE TABLE user (
ID INT PRIMARY KEY auto_increment,
Name VARCHAR(25) NOT NULL,
CourseID INT,
FOREIGN KEY (CourseID) REFERENCES course (ID)
); 
INSERT course (ID, Name) VALUES (1,'HTML5');
INSERT course (ID, Name) VALUES (2,'CSS3');
INSERT course (ID, Name) VALUES (3,'JavaScript');
INSERT course (ID, Name) VALUES (4,'PHP');
INSERT course (ID, Name) VALUES (5,'MySQL');
INSERT USER (CourseID, Name) VALUES (1,'Alice');
INSERT USER (CourseID, Name) VALUES (1,'Bob');
INSERT USER (CourseID, Name) VALUES (2,'Caroline');
INSERT USER (CourseID, Name) VALUES (5,'David');
INSERT USER (CourseID, Name) VALUES (NULL,'Emma');



