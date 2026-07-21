SELECT*FROM employee;

INSERT INTO employee(name, position, department, hire_date, salary)
VALUES ('Ajit', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	('Priya', 'Software Engineer', 'IT', '2021-09-20', 75000.00),
	('Rajesh', 'HR Manager', 'Human Resources', '2019-09-20', 82000.00),
	('Sneha', 'Marketing Specialist', 'Marketing', '2020-03-13', 58000.00),
	('Vikram', 'Sales Executive', 'Sales', '2018-04-28', 62000.00);

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;