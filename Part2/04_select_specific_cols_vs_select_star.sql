--slect * - returns every col

SELECT * FROM products;


--select specific col
SELECT name, category, price, stock, sku 
FROM products 

--As creates an alias for the output of that column name 
--makes readable

SELECT 
name As Product_name,
 price As selling_price,
 stock As available_quantity
FROM products WHERE category='electronics';