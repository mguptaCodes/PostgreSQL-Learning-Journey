CREATE TABLE IF NOT EXISTS productss(
product_id SERIAL PRIMARY KEY,
name_of_products VARCHAR(100),
category VARCHAR(50),
price NUMERIC(10,2),
quantity INT, 
added_date DATE,
discount_rate NUMERIC(5,2)
);

INSERT INTO productss(name_of_products, category, price, quantity, added_date, discount_rate)
VALUES ('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-29', 12.00),
('Monitor', 'Electronics', 12000.09, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT*FROM productss;

--Find total of quantity

SELECT SUM(quantity) AS total_quantity
FROM productss;

SELECT SUM(quantity) 
FROM productss
WHERE category='Electronics';

SELECT SUM(quantity)
FROM productss
WHERE category='Accessories'  AND price<800;

--Find total number of products

SELECT COUNT(name_of_products) AS number_of_products
FROM productss;

SELECT COUNT(name_of_products) 
FROM productss
WHERE name_of_products LIKE '%phone%';

--Average price of the products

SELECT AVG(price) AS avg_price
FROM productss
WHERE category='Accessories' OR added_date>'2024-02-02';

--Maximum and Minimum price

SELECT MAX(price)  as maximum_price,
	MIN(price) as minimum_price
FROM productss


