-- before update
SELECT name, category,price, is_active
FROM products
WHERE category='Stationery';


UPDATE products
SET price=ROUND(price * 1.10,2)
WHERE category='Stationery';

-- after update
SELECT name, category,price, is_active
FROM products
WHERE category='Stationery';

--
SELECT name, category,price, stock, is_active
FROM products

UPDATE products
SET is_active='false'
WHERE stock=0;

SELECT name, category,price, stock, is_active
FROM products
