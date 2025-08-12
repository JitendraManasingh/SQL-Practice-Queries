/* =============================================================
   Project: SQL Basics Questions & Examples
   Purpose: Practice SQL from basic to advanced concepts
   Database: SQL Server (syntax can be adapted to MySQL/PostgreSQL)
   Author: [Your Name]
   Date: [Insert Date]
   ============================================================= */

---------------------------------------------------------------
-- 1. Create a new database for practice
---------------------------------------------------------------
CREATE DATABASE [SQL Basics Questions];

-- Switch to the new database
USE [SQL Basics Questions];


---------------------------------------------------------------
-- 2. Create Employees table
---------------------------------------------------------------
/*
Fields:
  - EmployeeID (Primary Key, Integer)
  - FirstName (First name of the employee)
  - LastName (Last name of the employee)
  - Department (Department name)
  - Salary (Salary amount in decimal)
*/
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


---------------------------------------------------------------
-- 3. Insert sample data into Employees table
---------------------------------------------------------------
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'HR', 55000.00),
(2, 'Jane', 'Smith', 'IT', 75000.00),
(3, 'Emily', 'Jones', 'Finance', 65000.00),
(4, 'Michael', 'Brown', 'IT', 80000.00),
(5, 'Sarah', 'Davis', 'HR', 60000.00),
(6, 'David', 'Wilson', 'Finance', 70000.00),
(7, 'Laura', 'Garcia', 'IT', 72000.00),
(8, 'Robert', 'Miller', 'HR', 58000.00),
(9, 'Sophia', 'Martinez', 'Finance', 67000.00),
(10, 'James', 'Anderson', 'IT', 81000.00);


---------------------------------------------------------------
-- 4. Practice Queries
---------------------------------------------------------------

-- Q1: Select all columns from Employees table
SELECT * FROM Employees;

-- Q2: Select only FirstName and LastName columns
SELECT FirstName, LastName FROM Employees;

-- Q3: Find all employees in the 'IT' department
SELECT * FROM Employees
WHERE Department = 'IT';

-- Alternative using LIKE
SELECT * FROM Employees
WHERE Department LIKE 'IT';

-- Q4: Select employees with salary greater than 70,000
SELECT * FROM Employees
WHERE Salary > 70000;

-- Q5: Sort results by LastName in ascending order
SELECT * FROM Employees
ORDER BY LastName ASC;

-- Q6: Select unique department names
SELECT DISTINCT Department FROM Employees;

-- Q7: Count number of employees in each department
SELECT Department, COUNT(*) AS [Number of Employees]
FROM Employees
GROUP BY Department;

-- Alternative counting by EmployeeID
SELECT Department, COUNT(EmployeeID) AS [Number of Employees]
FROM Employees
GROUP BY Department;

-- Q8: Find the highest salary
SELECT MAX(Salary) AS [Maximum Salary]
FROM Employees;

-- Q9: Find average salary of 'Finance' department
SELECT Department, AVG(Salary) AS [Average Salary]
FROM Employees
WHERE Department = 'Finance'
GROUP BY Department;

-- Alternative using LIKE
SELECT AVG(Salary) AS [Average Salary]
FROM Employees
WHERE Department LIKE 'Finance';

-- Q10: Select employees whose LastName starts with 'M'
SELECT * FROM Employees
WHERE LastName LIKE 'M%';
