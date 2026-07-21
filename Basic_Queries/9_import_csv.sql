CREATE TABLE IF NOT EXISTS employee_3(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
department VARCHAR(50) NOT NULL,
salary NUMERIC(10,2),
joining_date DATE,
age INT
);

SELECT*FROM employee_3;

ALTER TABLE employee_3
ALTER COLUMN joining_date TYPE VARCHAR(50);



COPY employee_3
(employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'C:\Users\HP\Downloads\employee_data.csv'
DELIMITER ','
CSV HEADER;

