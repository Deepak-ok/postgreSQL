--not null, UNIQUE, DEFAULT, CHECK

DROP TABLE IF EXISTS basics.accounts;
CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email text NOT NULL UNIQUE,
    is-active BOOLEAN DEFAULT true,
    age INTEGER CHECK(AGE>10),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.accounts(full_name, email,age)
VALUES ('sangam', 'sangm@gmail.com', 20)