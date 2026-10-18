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
transaction_date DATE,
FOREIGN KEY(account_id) REFERENCES banking.accounts(account_id)
);

ALTER TABLE banking.transactions
RENAME COLUMN  transaction TO transaction_date;


ALTER TABLE banking.transactions
ALTER COLUMN transaction_date TYPE DATE;


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
	   DELETE FROM  banking.branch;

SELECT * FROM  banking.branch;


INSERT INTO banking.customers(customer_name, phone,city)
values ('Amit Sharma','45148651','Delhi'),
       ('Priya Verma','64615646','Mumbai'),
	   ('Rahul Singh ','9648615','pune'),
	   ('Sneha Patil ','4521555','Nagpur'),
	   ('Rohit Mehta  ','7895258','Ahmedabad');

INSERT INTO banking.customers(customer_name, phone,city)
values ('Shalu Rathore','4785552','Lahore'),
       ('Ranu','4785255','Gwalior');
	   DELETE FROM  banking.customers;
SELECT * FROM  banking.customers;

INSERT INTO banking.accounts(customer_id, branch_id, account_type,balance)
VALUES (1,1, 'Saving', 50000),
       (2,2, 'Saving', 475.55),
	   (3,3, 'Current', 47510),
	   (4,4, 'Saving', 7000),
	   (5,5, 'Current', 46000),
	   (6,1, 'Saving', 40000),
	   (7,2, 'Saving', 62000);
	   -- (8,3, 'Current', 30000),
	   -- (9,4, 'Saving', 0000),
	   -- (10,5, 'Saving', 750000);
SELECT * FROM  banking.accounts;
DELETE FROM  banking.accounts;
SELECT * FROM  banking.accounts;

INSERT INTO banking.transactions(account_id,transaction_type,amount,transaction_date)
VALUES (1,'Deposit',10000,'2024-10-22'),
       (2,'Withdraw',50000,'2024-10-10'),
	   (3,'Deposit',15000,'2024-01-22'),
	   (4,'Withdraw',2000,'2024-10-13'),
	   (5,'Deposit',8000,'2024-10-14'),
	   (6,'Withdraw',3000,'2024-10-15'),
	   (7,'Deposit',13000,'2024-10-16');
	 --   (8,'Withdraw',4000,'2024-10-17'),
  --       (9,'Deposit',9000,'2024-10-18'),
		-- (10,'Withdraw',4500,'2024-10-19');
DELETE FROM  banking.transactions;
SELECT * FROM  banking.transactions;

INSERT INTO banking.loan(customer_id,branch_id,loan_amount,loan_type)
VALUES (1,1,5000,'Home Loan'),
       (3,3,2000,'Car Loan'),
	   (5,5,8000,'Personal Loan'),
	   (7,2,5000,'Bussiness Loan'),
	   (4,3,5000,'Education Loan');
	   DELETE FROM  banking.loan;
SELECT * FROM  banking.loan;

-- 
SELECT 
  cust.customer_name,
  acc.account_id,
  acc.balance
  FROM banking.customers cust
  INNER JOIN banking.accounts acc
  ON cust.customer_id= acc.customer_id;

SELECT 
  cust.customer_name,
  loan.loan_amount
  FROM banking.customers cust
  Left JOIN banking.loan loan
  ON cust.customer_id= loan.customer_id;

 SELECT 
  cust.customer_name,
  loan.loan_amount,
  loan.*,
  cust.*
  FROM banking.customers cust
  JOIN banking.loan loan
  ON cust.customer_id= loan.customer_id;

 SELECT 
  cust.customer_name,
 acc.account_id,
  trn.amount,
  trn.transaction_type
  FROM banking.customers cust
     JOIN banking.accounts acc
  ON cust.customer_id= acc.customer_id
     JOIN  banking.transactions trn
  ON acc.account_id= trn.account_id;

CREATE OR REPLACE FUNCTION banking.total_balance()
RETURNS NUMERIC AS $BODY$
BEGIN
  RETURN (SELECT SUM(balance) FROM banking.accounts);
END;
$BODY$ LANGUAGE plpgsql;
SELECT banking.total_balance();

CREATE OR REPLACE FUNCTION banking.total_balance1()
RETURNS NUMERIC AS $BODY$
DECLARE tot_amt NUMERIC;
BEGIN
   SELECT SUM(balance) INTO tot_amt FROM banking.accounts;
   RETURN tot_amt;
END;
$BODY$ LANGUAGE plpgsql;

SELECT banking.total_balance1();

SELECT * FROM banking.transactions;
CREATE OR REPLACE PROCEDURE banking.prc_add_transaction(
acc INT,
amt NUMERIC,
type VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN 
 INSERT INTO banking.transactions(account_id, amount, transaction_type)
 VALUES(acc,amt,type);
 END;
 $$;
 CALL banking.prc_add_transaction(1,5000,'Deposit');
 SELECT * FROM banking.transactions;

 ALTER TABLE banking.transactions
 ALTER COLUMN transaction_date
 SET DEFAULT now();

  CALL banking.prc_add_transaction(2,75000,'loan');
 SELECT * FROM banking.transactions;


CREATE OR REPLACE PROCEDURE banking.prc_deposit_money(
acc_id INT,
deposit_amount NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN 
  UPDATE banking.accounts
  SET balance=balance+deposit_amount
  WHERE account_id=acc_id;
END;
$$;

CALL banking.prc_deposit_money(1,10000);
select * from banking.accounts WHERE account_id=1;



 

 



