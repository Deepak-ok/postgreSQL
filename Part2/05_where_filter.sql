SELECT 
name As Product_name,
 price As selling_price,
 category As Category
FROM products WHERE category='Electronics';

SELECT name, category, price, stock, sku 
FROM products WHERE price>754;

SELECT name, is_active
FROM products WHERE is_active='False';