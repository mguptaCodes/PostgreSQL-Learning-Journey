CREATE TABLE accounts(
customer_id SERIAL PRIMARY KEY,
amount BIGINT,
mode VARCHAR(50),
payment_date DATE
);

INSERT INTO accounts(amount, mode,payment_date)
VALUES(45, 'Cash', '2025-09-24'),
(60, 'Credit Card', '2025-04-27'),
(90, 'Credit Card', '2025-07-07'),
(50, 'Debit Card', '2025-02-12'),
(44, 'Mobile Payment', '2025-11-20'),
(75, 'Debit Card', '2025-06-28'),
(25, 'Cash', '2025-08-25');

SELECT*FROM accounts;

--GROUP BY Clause
SELECT mode, SUM(amount) AS Total_amount
FROM accounts
GROUP BY mode
ORDER BY Total_amount ASC;

--HAVING Clause
SELECT mode, COUNT(amount)
FROM accounts
GROUP BY mode
HAVING COUNT(amount)>=1;

