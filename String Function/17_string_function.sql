SELECT*FROM productss;

--UPPER String Function
SELECT UPPER(category)
from productss;

--LOWER String Function
SELECT LOWER(category)
from productss;

--CONCAT String Function
SELECT CONCAT(name_of_products, category) AS product_details
FROM productss;

--SUSTRING Function
SELECT SUBSTRING(name_of_products,1,5)
FROM productss;

SELECT SUBSTRING(name_of_products,1,5)
FROM productss
WHERE product_id=7;

--LENGTH String Function
SELECT name_of_products, LENGTH(name_of_products)
FROM productss;

SELECT LENGTH('   Monitor  ');

--TRIM String Function
SELECT TRIM('   Monitor   ') AS trimmed_string;

SELECT LENGTH(TRIM('   Monitor  '));

--REPLACE Sting Function
SELECT REPLACE(name_of_products,'phone','device') AS replaced_word
FROM productss;

--LEFT and RIGHT Function
SELECT LEFT(category, 3) AS left_letters
FROM productss;

SELECT RIGHT(category, 3) AS right_letters
FROM productss;