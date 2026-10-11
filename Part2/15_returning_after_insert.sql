--returning usually returns back the row 9mmediately after insert

INSERT INTO products(name, category, price, stock, sku, description)
VALUES ('temp_pro', 'electronics', 350,25, 'ELEC-TEMP-002', 'ltemp pro description' )
RETURNING id,name, category, price, stock, sku, description;

UPDATE products
SET stock=stock+55
WHERE sku='ELEC-TEMP-002'
RETURNING id,name, stock;

DELETE FROM products
WHERE sku='ELEC-TEMP-002'
RETURNING id,name,sku;