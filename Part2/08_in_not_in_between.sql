--In >- value must match any item from the list
--Not In >- value must not match any item from the list
--Between >- between a range


SELECT name, category, price
FROM products WHERE category IN ('Furniture','Electronics');

SELECT name, category, price
FROM products WHERE category NOT IN ('Furniture','Electronics');

SELECT name, price
FROM products WHERE price BETWEEN 100 AND 5000;

SELECT name, category, price
FROM products WHERE category IN ('Furniture','Electronics')
AND price BETWEEN 100 AND 5000;