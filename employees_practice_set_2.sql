/* =============================================================
   Project: SQL Basics Questions & Examples
   Purpose: Practice SQL from basic to advanced concepts
   Database: SQL Server (syntax can be adapted to MySQL/PostgreSQL)
   Author: Jitendra Kumar Manasingh
   Date: 12-08-2025
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

-- 1. Employees in IT with salary > 75,000
SELECT * FROM Employees
WHERE Salary > 75000 AND Department = 'IT';

-- Alternative syntax
SELECT * FROM Employees
WHERE Department IN ('IT') AND Salary > 75000;

-- 2. Employees in HR or salary < 60,000
SELECT * FROM Employees
WHERE Department = 'HR' OR Salary < 60000;

SELECT * FROM Employees
WHERE Department IN ('HR') OR Salary < 60000;

-- 3. Employees not in Finance
SELECT * FROM Employees
WHERE Department NOT IN ('Finance');

SELECT * FROM Employees
WHERE Department <> 'Finance';

SELECT * FROM Employees
WHERE NOT Department = 'Finance';

-- 4. Salary between 60,000 and 70,000 in Finance
SELECT * FROM Employees
WHERE Salary BETWEEN 60000 AND 70000 AND Department IN ('Finance');

-- 5. IT employees with salary <= 80,000
SELECT * FROM Employees
WHERE Department IN ('IT') AND Salary <= 80000;

-- 6. HR or Finance employees with salary > 65,000
SELECT * FROM Employees
WHERE Department IN ('HR', 'Finance') AND Salary > 65000;

SELECT * FROM Employees
WHERE (Department IN ('HR') OR Department IN ('Finance')) AND Salary > 65000;

-- 7. Last name starts with D, not in HR
SELECT * FROM Employees
WHERE LastName LIKE 'D%' AND Department NOT IN ('HR');

-- 8. Not in IT, salary > 70,000
SELECT * FROM Employees
WHERE NOT Department = 'IT' AND Salary > 70000;

-- 9. IT employees OR salary > 75,000 OR first name is Laura
SELECT * FROM Employees
WHERE Department IN ('IT') OR Salary > 75000 OR FirstName = 'Laura';

-- 10. Not in HR or IT
SELECT * FROM Employees
WHERE Department NOT IN ('HR', 'IT');

SELECT * FROM Employees
WHERE Department <> 'HR' AND Department <> 'IT';

SELECT * FROM Employees
WHERE NOT (Department IN ('HR', 'IT'));
