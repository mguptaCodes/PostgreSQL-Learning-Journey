SELECT*FROM customers;

WITH cte_table AS
(SELECT*FROM customers
WHERE age>24)
SELECT*FROM cte_table;


SELeCT*FROM Employees3;
SELeCT*FROM Departments;

WITH temporary_table AS(
SELECT first_name, last_name, department_name 
FROM Employees3 e
JOIN
Departments d
ON e.department_id=d.department_id
)
SELECT*FROM temporary_table;