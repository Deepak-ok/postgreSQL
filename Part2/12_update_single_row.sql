
 -- befor update
 
SELECT name, price, sku, stock
FROM products 
WHERE sku='ELEC-KEY-001';

UPDATE products
SET price=149,
    stock=500
 WHERE sku='ELEC-KEY-001';   

-- after update
SELECT name, price, sku, stock
FROM products 
WHERE sku='ELEC-KEY-001';  