SELECT*FROM productss;

/* CASE function- categorizing based on conditions

we will categorize products based on prices ranges:
Expensive if the product is greater than or equal to 50,000.
Moderte if the price is between 10,000  and 49,999.
Affordable if the price is less than 10,000.
*/

SELECT price, 
CASE 
	WHEN price>=50000 THEN 'Expensive'
	WHEN price>10000 AND price<49999 THEN 'Moderate'
	ELSE 'Affordable' END AS price_category
FROM productss;


SELECT*FROM productss;

--COALESCE function

ALTER TABLE productss
DROP COLUMN discount_price;

ALTER TABLE productss
ADD COLUMN discount_price NUMERIC(10,2);

UPDATE productss
SET discount_price=NULL
WHERE name_of_products IN('Laptop', 'Smartphone');

UPDATE productss
SET discount_price=price*0.9
WHERE name_of_products NOT IN('Laptop', 'Smartphone');

SELECT name_of_products,
COALESCE(discount_price, price)
FROM productss;
