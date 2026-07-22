SELECT*FROM productss;

SELECT name_of_products, quantity,
CASE
	WHEN quantity>=10 THEN 'In Stock'
	WHEN quantity BETWEEN 5 AND 9 THEN 'Limited Stock'
	ELSE 'Out of Stock Soon' 
  END AS stock_status
FROM productss;


SELECT name_of_products, category,
CASE
	WHEN category LIKE 'Elec%' THEN 'Electronics Items'
	WHEN category LIKE 'Acces%' THEN 'Accessories Items'
	ELSE 'Furniture Items' END
FROM productss;	