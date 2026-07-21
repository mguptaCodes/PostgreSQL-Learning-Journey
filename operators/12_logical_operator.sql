SELECT*FROM employee_3;

--select salary greater than 50000 AND age greater than 40.

SELECT salary, age FROM employee_3
WHERE salary>50000 AND age>40;

--select age greater equal to 60 OR salary grater equal to 90000

SELECT*FROM employee_3
WHERE age>=60 OR salary>=90000;

SELECT*FROM employee_3
WHERE NOT (department='IT');
