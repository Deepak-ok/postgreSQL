--left join keep all the rows from left table
--if the right table has matching data,postgresql includes that
----if its don't have any matching data it returns null

--posts-> left table
-- comments-> right tBLE

--because not every posts is going have comments
--some posts will have 100 comments and some will have 0

SELECT 
   posts.title As posts_title,
   comments.body As comments_body
   FROM posts --left table
   LEFT JOIN comments
   ON posts.id= comments.post_id;
