# SQL-Practice-Queries
Practical SQL examples from basics to advanced for learning and interview prep.

## Features
- Database creation and table setup
- Sample data insertion
- Basic `SELECT` queries
- Filtering with `WHERE` and `LIKE`
- Sorting results with `ORDER BY`
- Removing duplicates using `DISTINCT`
- Aggregation with `COUNT`, `MAX`, and `AVG`
- Grouping with `GROUP BY`
- Pattern matching

## File Structure
- **employees_practice.sql** → Full SQL script with comments
- **docs/sql_query_reference.md** → Query-by-query explanations

## How to Use
1. Open SQL Server Management Studio (SSMS) or your preferred SQL environment.
2. Run the `employees_practice.sql` script to create the database and insert sample data.
3. Practice running the queries one by one.

## Example Query
```sql
-- Select all employees in the IT department
SELECT * FROM Employees
WHERE Department = 'IT';
