-- o1 create Schema 
CREATE SCHEMA banking;

CREATE TABLE banking.branch(
  branch_id SERIAL PRIMARY KEY,
  branch_name VARCHAR(100),
  city VARCHAR(50)
);

-- agr hume new column add krna ho to ese karenge
-- ALTER TABLE banking.branch ADD COLUMN
-- city VARCHAR(50);

CREATE TABLE banking.customers(
customer_id SERIAL PRIMARY KEY,
customer_name varchar(100),
phone varchar(15),
city varchar(50)
);

CREATE TABLE banking.accounts(
account_id SERIAL PRIMARY KEY,
customer_id INT,
branch_id INT,
account_type Varchar(20),
balance DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES banking.customers(customer_id),
FOREIGN KEY(branch_id) REFERENCES banking.branch(branch_id)
);