--Retrieve the first_name, salary, and calculate a 10% bonus on the salary.

SELECT*FROM employee_3;

SELECT first_name, salary, (salary*0.1) AS Bonus
FROM employee_3;

--Calculate the Annual salary and salary increment by 5% show the monthly new salary as well.

SELECT first_name, last_name, salary,
	(salary*12) AS annual_salary,
	(salary*0.05) AS salary_increment,
	(salary+salary*0.05) AS new_salary
FROM employee_3;