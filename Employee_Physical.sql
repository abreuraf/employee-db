/* 

Employee Physical 

Description: script for create and add sample data.

*/

CREATE DATABASE Employee
GO

USE Employee
GO

CREATE TABLE Department(
	department_id INT IDENTITY,
	department_name VARCHAR(50),
	CONSTRAINT PK_Department PRIMARY KEY(department_id)
)
GO

CREATE TABLE Employee (
	employee_id INT IDENTITY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender CHAR,
	position VARCHAR(50),
	department_id INT,
	salary SMALLMONEY,
	CONSTRAINT PK_Employee PRIMARY KEY(employee_id),
	CONSTRAINT FK_Employee_Department FOREIGN KEY(department_id) REFERENCES Department(department_id)
)
GO

-- insert sample data on Department table 
INSERT INTO Department VALUES('Sales')
INSERT INTO Department VALUES('IT')
INSERT INTO Department VALUES('Design')
INSERT INTO Department VALUES('Administrative')

-- insert sample data on Employee table
INSERT INTO Employee VALUES('Luciana','Moura','F','Developer', 2)
INSERT INTO Employee VALUES('Leslie','Norden','F','Sales Manager', 1)
INSERT INTO Employee VALUES('Robert','Alexander','M','Sales Assistant', 1)
INSERT INTO Employee VALUES('Phillip','Flowers','M','Architect', 3)
INSERT INTO Employee VALUES('Maria','Torlweef','F','Sales Assistant', 1)
INSERT INTO Employee VALUES('Stacy','Bitter','F','Sales Representative', 1)