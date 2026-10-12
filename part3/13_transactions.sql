--multiple sql statements run as one safe unit
--placing an order
--reduce stock of that product
--createing payment record
--transfering money
--creating users records with related profile data

BEGIN;

UPDATE posts
SET status='published'
WHERE title='Indexes for Beginner'
AND status='draft';

UPDATE posts
SET views=views+140
WHERE title='Indexes for Beginner';

SELECT 
title,
status,
views
FROM posts
WHERE title='Indexes for Beginner';

COMMIT;