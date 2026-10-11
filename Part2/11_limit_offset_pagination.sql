--limt- means how many u want to print
-- offset- howq many rows u want to skip

SELECT name, price
FROM products 
order by price asc
LIMIT 5;

SELECT name, price
FROM products 
order by price asc
OFFSET 5;

--(page -1 ) *limt