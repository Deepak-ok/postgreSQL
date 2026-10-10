--AND - very condition must be true,
--OR- atleat one condition must be true
--NOT-reverse/exclude a condition

--product where it is eclectronics but price>100

SELECT name, category, price
FROM products WHERE category='Electronics'
 AND price>1000;

 --product where category is eclectronics or furniture

 SELECT name, category, price
FROM products WHERE category='Electronics'
 OR category='Furniture';

 SELECT name, category, price
FROM products WHERE NOT category='Electronics';

SELECT name, category, price, stock
FROM products WHERE (category='Electronics' OR category='Furniture')
 AND stock>10;

 SELECT name, is_active, price, stock
FROM products WHERE is_active='True'
 AND (price<1000 OR stock>=20);

