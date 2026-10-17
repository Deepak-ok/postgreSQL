-- o1 create Schema 
CREATE SCHEMA banking;
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

