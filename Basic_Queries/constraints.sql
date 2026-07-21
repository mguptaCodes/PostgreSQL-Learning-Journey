CREATE TABLE users(
	users_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK(age>=18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users(users_id, name, email, age)
VALUES (1, 'John Deo', 'john12@gmail.com', 23);

SELECT*FROM users