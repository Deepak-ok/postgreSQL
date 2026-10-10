CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price>=0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock>=0),
    is_active BOOLEAN DEFAULT true,
    sku TEXT UNIQUE ,
    description TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO products(name, category, price, stock, is_active, sku, description)
VALUES ('Mechanical keyboard', 'Electronics', 3499, 15, 'TRUE', 'ELEC-KEY-001', 'RGB Keyboard' ),
('Wireless Mouse', 'Electronics', 1255, 40, 'TRUE', 'ELEC-MOU-001', 'Eragonomic Wireless ' ),
('USB-C', 'Electronics', 254, 75, 'TRUE', 'ELEC-CAB-001', 'NULL' ),
('Office Chair', 'Furniture', 3500, 45, 'TRUE', 'ELEC-CHA-001', 'Comfortable chair for long work sessions' ),
('Standing Desk', 'Furniture', 1456, 78, 'TRUE', 'ELEC-DES-001', ' Height Adjustable Desk' ),
('Notebook', 'Stationery', 60, 25, 'TRUE', 'ELEC-NOT-001', 'Ruled notebook for daily notes' ),
('Gel Pen', 'Stationery', 20, 12, 'TRUE', 'ELEC-GEL-001', 'NULL' ),
('Old Monitor', 'Electronics', 7549, 0, 'FALSE', 'ELEC-OLD-001', ' Inactive old Stock' );

SELECT * FROM products;