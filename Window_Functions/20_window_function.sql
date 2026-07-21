SELECT*FROM productss;

SELECT name_of_products, category, price,
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC)
FROM productss;

SELECT name_of_products, category, price,
	DENSE_RANK() OVER(PARTITION BY category ORDER BY price) AS ranking_no
FROM productss;

SELECT name_of_products, category, price,
	SUM(price) OVER(ORDER BY price DESC) AS running_total
FROM productss;