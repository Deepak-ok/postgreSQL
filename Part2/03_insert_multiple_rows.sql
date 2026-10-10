INSERT INTO products(name, category, price, stock, is_active, sku, description)
VALUES ('Mechanical keyboard', 'Electronics', 3499, 15, 'TRUE', 'ELEC-KEY-001', 'RGB Keyboard' ),
('Wireless Mouse', 'Electronics', 1255, 40, 'TRUE', 'ELEC-MOU-001', 'Eragonomic Wireless ' ),
('USB-C', 'Electronics', 254, 75, 'TRUE', 'ELEC-CAB-001', 'NULL' ),
('Office Chair', 'Furniture', 3500, 45, 'TRUE', 'ELEC-CHA-001', 'Comfortable chair for long work sessions' ),
('Standing Desk', 'Furniture', 1456, 78, 'TRUE', 'ELEC-DES-001', ' Height Adjustable Desk' ),

SELECT name, category, price, stock, sku 
FROM products 
WHERE sku IN ('ELEC-KEY-002','ELEC-MOU-001', 'ELEC-CHA-001' );