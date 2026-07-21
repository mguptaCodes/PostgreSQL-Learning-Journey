CREATE TABLE IF NOT EXISTS user_details(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

INSERT INTO user_details(username, email, age, city)
VALUES ('John Deo', 'john12@gmail.com', 23, 'Raipur'),
	('Rajesh', 'rajesh14@gmail.com', 20, 'Jaipur'),
	('Kamlesh', 'kamlesh233@gmail.com', 25, 'Nagpur'),
	('Mukesh', 'mukesh2020@gmail.com', 21, 'Sahapur'),
	('Shyam', 'shyam34@gmail.com', 24, 'jashpur');

SELECT*FROM user_details ORDER BY user_id ASC;

ALTER TABLE user_details
RENAME COLUMN username TO full_name;

ALTER TABLE user_details
ALTER COLUMN age TYPE SMALLINT;

ALTER TABLE user_details
ALTER COLUMN city SET NOT NULL;

ALTER TABLE user_details
ADD CONSTRAINT age CHECK(age>=18);

ALTER TABLE user_details
RENAME TO customers;

SELECT*FROM customers ORDER BY user_id ASC;
