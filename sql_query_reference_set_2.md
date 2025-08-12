# SQL Query Reference — Employees Practice

This document explains each SQL query used in `employees_practice.sql`.

## 1. Employees in IT with salary > 75,000
```sql
SELECT * FROM Employees
WHERE Salary > 75000 AND Department = 'IT';
```
**Purpose:** Finds all IT department employees earning more than 75,000.

---

## 2. Employees in HR or salary < 60,000
```sql
SELECT * FROM Employees
WHERE Department = 'HR' OR Salary < 60000;
```
**Purpose:** Lists employees either in HR or earning less than 60,000.

---

## 3. Employees not in Finance
```sql
SELECT * FROM Employees
WHERE Department NOT IN ('Finance');
```
**Purpose:** Excludes Finance department employees.

---

## 4. Salary between 60,000 and 70,000 in Finance
```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 60000 AND 70000 AND Department IN ('Finance');
```
**Purpose:** Finds Finance employees with salaries between 60,000 and 70,000.

---

## 5. IT employees with salary <= 80,000
```sql
SELECT * FROM Employees
WHERE Department IN ('IT') AND Salary <= 80000;
```
**Purpose:** Finds IT employees not exceeding 80,000 in salary.

---

## 6. HR or Finance employees with salary > 65,000
```sql
SELECT * FROM Employees
WHERE Department IN ('HR', 'Finance') AND Salary > 65000;
```
**Purpose:** Lists employees in HR or Finance earning more than 65,000.

---

## 7. Last name starts with D, not in HR
```sql
SELECT * FROM Employees
WHERE LastName LIKE 'D%' AND Department NOT IN ('HR');
```
**Purpose:** Finds employees whose last name starts with 'D' and are not in HR.

---

## 8. Not in IT, salary > 70,000
```sql
SELECT * FROM Employees
WHERE NOT Department = 'IT' AND Salary > 70000;
```
**Purpose:** Finds high earners outside IT.

---

## 9. IT employees OR salary > 75,000 OR first name is Laura
```sql
SELECT * FROM Employees
WHERE Department IN ('IT') OR Salary > 75000 OR FirstName = 'Laura';
```
**Purpose:** Combines multiple conditions with OR.

---

## 10. Not in HR or IT
```sql
SELECT * FROM Employees
WHERE Department NOT IN ('HR', 'IT');
```
**Purpose:** Lists employees outside HR and IT departments.
