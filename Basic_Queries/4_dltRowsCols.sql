CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT*FROM employee2;

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
VALUES (101, 'Ajit', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	(102, 'Priya', 'Software Engineer', 'IT', '2021-09-20', 75000.00),
	(103, 'Rajesh', 'HR Manager', 'Human Resources', '2019-09-20', 82000.00),
	(104, 'Sneha', 'Marketing Specialist', 'Marketing', '2020-03-13', 58000.00),
	(105, 'Vikram', 'Sales Executive', 'Sales', '2018-04-28', 62000.00);

DELETE FROM employee2
WHERE employee_id=105;

ALTER TABLE employee2
DROP COLUMN salary;

DROP TABLE IF EXISTS employee2;

DROP DATABASE IF EXISTS company1;


