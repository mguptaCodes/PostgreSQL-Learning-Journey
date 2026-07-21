DROP TABLE IF EXISTS students_2023;

CREATE TABLE students_2023(
student_id INT PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
course VARCHAR(50) NOT NULL
);

INSERT INTO students_2023(student_id, student_name, course)
VALUES(1, 'Aarav', 'cse'),
(2, 'Ishita', 'Mechanical eng'),
(3, 'Kabir', 'Electronics'),
(4, 'Ananya', 'Civil eng'),
(5, 'Rahul', 'cse');

SELECT*FROM students_2023;



DROP TABLE IF EXISTS students_2024;

CREATE TABLE students_2024(
student_id INT PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
course VARCHAR(50) NOT NULL
);

INSERT INTO students_2024(student_id, student_name, course)
VALUES(3, 'Kabir', 'Electronics'),
(4, 'Ananya', 'Civil eng'),
(6, 'Meera', 'cse'),
(7, 'Vikram', 'Mathematics'),
(8, 'Sanya', 'Physics');

SELECT*FROM students_2024;


--UNION (Combines results, removes duplicate)

SELECT student_name, course FROM students_2023 
UNION 
SELECT student_name, course FROM students_2024;

--UNION ALL (Combines results, keeps duplicates)

SELECT*FROM students_2023
UNION ALL
SELECT*FROM students_2024;


--INTERSECT (Returns coomon results in both tables)

SELECT*FROM students_2023
INTERSECT
SELECT*FROM students_2024;

--EXECPT (Returns results in the first table but not in the second)

SELECT*FROM students_2023
EXCEPT
SELECT*FROM students_2024;


