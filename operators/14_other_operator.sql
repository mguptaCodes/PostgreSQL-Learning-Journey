SELECT*FROM employee_3;

--Find employees where the email column is null

SELECT first_name, email
FROM employee_3
WHERE email IS NULL;

--List employees sorted by salary in descending order

SELECT first_name, salary FROM employee_3
ORDER BY salary DESC;

--Retrieve the top 5 highest-paid employees

SELECT first_name, salary
FROM employee_3
ORDER BY salary DESC
LIMIT 5;

--Retrieve a list of unique department

SELECT DISTINCT department
FROM employee_3;

SELECT COUNT(DISTINCT department)
FROM employee_3;



