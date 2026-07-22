CREATE DATABASE OnlineBookStore;

DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
Book_ID SERIAL PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
Genre VARCHAR(50),
Published_year INT,
Price NUMERIC(10,2),
Stock INT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE Customers(
Customer_ID SERIAL PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(15),
City VARCHAR(50),
Country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders(
Order_ID SERIAL PRIMARY KEY,
Customer_ID INT REFERENCES Customers(Customer_ID),
Book_ID INT REFERENCES Books(Book_ID),
Order_Date DATE,
Quantity INT,
Total_Amount NUMERIC(10,2)
);

SELECT*FROM Books;
SELECT*FROM customers;
SELECT*FROM orders;

--BASIC QUERIES...

--Retrieve all books in the "Ficion" Genre.
SELECT Title, Genre FROM Books
WHERE Genre='Fiction';

--Find books published after the year 1950.
SELECT title, published_year FROM Books
WHERE published_year>1950;

--List all customers from Canada
SELECT name, country FROM customers
WHERE Country='Canada';

--Show orders placed in November 2023.
SELECT Order_id, order_date FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--Retrieve the total stock of books available
SELECT SUM(stock) AS Total_Stock 
FROM Books;

--Find the details of the most expensive book
SELECT title, author, published_year, price FROM Books
ORDER BY price DESC LIMIT 1;

--Show all customers who ordered more than 1 quantity of a book.
SELECT customer_id, quantity FROM orders
WHERE quantity>1;

--Retrieve all orders where the total amount exceeds $20.
SELECT order_id, total_amount FROM orders
WHERE total_amount>20;

--List all genres available in the books table
SELECT DISTINCT Genre FROM Books;

--Find the book with the lowest stock.
SELECT Title, Stock AS Lowest_Stock
FROM Books
ORDER BY stock ASC LIMIT 1;

--Calculate the total revenue generated from all orders.
SELECT SUM(total_amount) AS Total_Revenue FROM orders;

--ADVANCED QUERIES...

SELECT*FROM Books;
SELECT*FROM customers;
SELECT*FROM orders;

--Retrieve the total number of books sold for each genre.
SELECT SUM(o.Quantity) AS Total_Number, b.genre
FROM orders o
JOIN
Books b
ON o.book_id=b.book_id
GROUP BY b.genre;

--Find the average price of books in the 'Fantasy' Genre.
SELECT AVG(price) FROM Books
WHERE Genre='Fantasy';

--List customers who have placed at least 2 orders.
SELECT o.customer_id, c.name, COUNT(o.order_id)
FROM orders o
JOIN
customers c
ON c.customer_id=o.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(order_id)>=2;

--Find the most frequently ordered book.
SELECT book_id, COUNT(order_id) AS Freq_order
FROM orders
GROUP BY book_id
ORDER BY Freq_order DESC LIMIT 1;

--Show the top 3 most expensive books of 'Fantasy' Genre.
SELECT title, Genre, Price
FROM Books
WHERE Genre='Fantasy'
ORDER BY Price DESC LIMIT 3;

--Retrieve the total quantity of books sold by each author.
SELECT b.author, SUM(quantity) AS Total_Quantity
FROM Books b
JOIN
orders o
ON b.book_id=o.book_id
GROUP BY b.author;

--List the cities where customers who spent over $30 are located.
SELECT DISTINCT c.city, o.total_amount
FROM customers c
JOIN
orders o
ON c.customer_id=o.customer_id
WHERE o.total_amount>=30;

--Find the customer who spent the most on orders.
SELECT*FROM Books;
SELECT*FROM customers;
SELECT*FROM orders;

SELECT  c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM customers c
JOIN 
orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id, c.name 
ORDER BY Total_Spent DESC LIMIT 1;

--Calculate the stock remaining after fulfilling all orders.
SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Sold_quantity, b.stock-COALESCE(SUM(o.quantity),0) AS Remaining_col
FROM Books b
LEFT JOIN
orders o
ON b.book_id=o.book_id
GROUP BY b.book_id
ORDER BY b.book_id;
