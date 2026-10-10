DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic(
id SERIAL PRIMARY KEY,
--STRING-> max lenghth of 100 chars
name VARCHAR(100) NOT NULL,
description TEXT,
stock INTEGER DEFAULT 0,
--store larger whole number than integsr
total_views BIGINT DEFAULT 0,

-- Exact decimal values
--10 means total digits
----2 means digits after decimal
price NUMERIC(10,2),
is_active BOOLEAN DEFAULT true
);

--quereies

INSERT INTO basics.products_basic
    (name, description, stock, total_views, price, is_active)
VALUES
    ('product 1', 'product desc', 100, 1200, 2455.55, true);

SELECT * FROM basics.products_basic;

SELECT id, name, price, is_active
FROM basics.products_basic
WHERE is_active;
