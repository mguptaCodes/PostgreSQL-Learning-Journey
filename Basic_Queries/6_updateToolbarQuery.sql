CREATE TABLE IF NOT EXISTS user_details(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT*FROM user_details;

SELECT user_id, username FROM user_details;

INSERT INTO user_details(username, email, age, city)
VALUES ('John Deo', 'john12@gmail.com', 23, 'Raipur'),
	('Rajesh', 'rajesh14@gmail.com', 20, 'Jaipur'),
	('Kamlesh', 'kamlesh233@gmail.com', 25, 'Nagpur'),
	('Mukesh', 'mukesh2020@gmail.com', 21, 'Sahapur'),
	('Shyam', 'shyam34@gmail.com', 24, 'jashpur');

UPDATE user_details
SET age=22
WHERE username='John Deo';

SELECT*FROM user_details;

SELECT*FROM user_details ORDER BY user_id ASC;

UPDATE user_details
SET city='Chennai'
WHERE age>22;

UPDATE user_details
SET age=31, city='Kolkata'
WHERE username='Kamlesh';

UPDATE user_details
SET age=age+1
WHERE EMAIL LIKE '%@gmail.com';











