--null- missing/unknown values
--u shoul not check null using null
--IS NULL
--IS OT NULL

SELECT name, description
FROM products WHERE description is NULL;

SELECT name, description
FROM products WHERE description is NOT NULL;

SELECT name, category, is_active, description
FROM products WHERE is_active=true
AND description is null;

UPDATE products
SET description = NULL
WHERE description = 'NULL';