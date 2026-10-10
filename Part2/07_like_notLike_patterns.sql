--LIKE, ILIKE, NOT LIKE AND NOT ILIKE WITH x%, __%,    ___, %a%
--like- case sensitive patterns match
--ilike- case insensitive patterns match
--% means any no. of chars
--exactly one char


--the % after wireless means anything can come after it
SELECT name,price
FROM products WHERE name LIKE 'wireless%';

SELECT name,price
FROM products WHERE name ILIKE 'desk%';

SELECT name, category, description
FROM products WHERE name ilike '%chair%'
OR description ilike '%chair%';