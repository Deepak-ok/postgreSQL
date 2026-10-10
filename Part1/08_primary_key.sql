DROP TABLE IF EXISTS basics.sales;

CREATE TABLE basics.sales(
     id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
     created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.sales(title,price)
VALUES ('Saari 1', 2354),
       ('Saari 2', 4524);

SELECT * FROM basics.sales;

SELECT * FROM basics.sales WHERE ID=2;