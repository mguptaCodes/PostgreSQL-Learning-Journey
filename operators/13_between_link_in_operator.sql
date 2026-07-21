SELECT*FROM employee_3;

--Retrieve employees whose salary is between 40,000 and 60,000use BETWEEN operator

SELECT first_name, last_name, salary FROM employee_3
WHERE salary BETWEEN 40000 AND 60000;

--Find employees whose email address end with gmail.com- Use LIKE operator

SELECT first_name, last_name, email FROM employee_3
WHERE email LIKE '%gmail.com';

SELECT first_name FROM employee_3
WHERE first_name LIKE 'A%';

--Retrieve employees who belong to either the 'Finance' or 'Marketing' departments- Use IN operator

SELECT first_name FROM employee_3
WHERE department IN ('Finance', 'Marketing');