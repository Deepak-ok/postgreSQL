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

ALTER TABLE banking.accounts ALTER COLUMN 
account_type TYPE Varchar(30);

CREATE TABLE banking.transactions(
transaction_id SERIAL PRIMARY KEY,
account_id INT,
transaction_type VARCHAR(20),
amount DECIMAL(10,2),
transaction TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(account_id) REFERENCES banking.accounts(account_id)
);

CREATE TABLE banking.loan(
loan_id SERIAL PRIMARY KEY,
customer_id INT,
branch_id INT,
loan_amount DECIMAL(10,2),
loan_type VARCHAR(50),
FOREIGN KEY (customer_id) REFERENCES banking.customers(customer_id),
FOREIGN KEY(branch_id) REFERENCES banking.branch(branch_id)
);

INSERT INTO banking.branch(branch_name,city)
VALUES ('SBI MAIN','Delhi'),
       ('HDFC','Mumbai'),
	   ('ICICI', 'Pune'),
	   ('Axis Bank','Nagpur'),
	   ('Kotak Bank','Ahmedabad');

SELECT * FROM  banking.branch;

INSERT INTO banking.customers(customer_name, phone,city)
values ('Amit Sharma','45148651','Delhi'),
       ('Priya Verma','64615646','Mumbai'),
	   ('Rahul Singh ','9648615','pune'),
	   ('Sneha Patil ','4521555','Nagpur'),
	   ('Rohit Mehta  ','7895258','Ahmedabad');
SELECT * FROM  banking.customers;	   


