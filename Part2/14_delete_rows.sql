INSERT INTO products(name, category, price, stock, sku, description)
VALUES ('temp_pro', 'electronics', 350,25, 'ELEC-TEMP-002', 'ltemp pro description' )

SELECT name, category,sku
FROM products
WHERE sku='ELEC-TEMP-002';

DELETE FROM products
WHERE sku='ELEC-TEMP-002';