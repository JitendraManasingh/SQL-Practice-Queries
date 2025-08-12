# SQL Query Reference – Employees Table

This document explains each query in the `employees_practice.sql` file, including purpose and expected output.

---

## Q1: Select all columns
```sql
SELECT * FROM Employees;
```
**Purpose:** Retrieves all columns and all rows from the Employees table.

---

## Q2: Select specific columns
```sql
SELECT FirstName, LastName FROM Employees;
```
**Purpose:** Retrieves only the first and last names of employees.

---

## Q3: Filter by department
```sql
SELECT * FROM Employees
WHERE Department = 'IT';
```
**Purpose:** Returns employees who work in the IT department.

**Alternative:**
```sql
WHERE Department LIKE 'IT'
```
This also works, but is usually used with wildcards for partial matches.

---

## Q4: Filter by salary greater than a value
```sql
SELECT * FROM Employees
WHERE Salary > 70000;
```
**Purpose:** Finds employees earning more than 70,000.

---

## Q5: Sort results by last name
```sql
SELECT * FROM Employees
ORDER BY LastName ASC;
```
**Purpose:** Lists employees in alphabetical order by last name.

---

## Q6: Get unique department names
```sql
SELECT DISTINCT Department FROM Employees;
```
**Purpose:** Lists each department only once.

---

## Q7: Count employees per department
```sql
SELECT Department, COUNT(*) AS [Number of Employees]
FROM Employees
GROUP BY Department;
```
**Purpose:** Shows how many employees work in each department.

---

## Q8: Find maximum salary
```sql
SELECT MAX(Salary) AS [Maximum Salary]
FROM Employees;
```
**Purpose:** Returns the highest salary value.

---

## Q9: Average salary in a department
```sql
SELECT Department, AVG(Salary) AS [Average Salary]
FROM Employees
WHERE Department = 'Finance'
GROUP BY Department;
```
**Purpose:** Calculates the average salary for Finance employees.

---

## Q10: Pattern match with LIKE
```sql
SELECT * FROM Employees
WHERE LastName LIKE 'M%';
```
**Purpose:** Finds employees whose last name starts with "M".

---

**Tip:**  
You can combine conditions using `AND` and `OR` to create more complex queries.
