--aliases is going to make ur queries shorter and easier to read
--posts, title
-- i want to write like this p.title

--users.name inserted u want to u.name

SELECT
 p.title As posts_title,
 p.status,
 p.views,
 u.name As author_name,
 c.body As comment_body
FROM posts As p
INNER JOIN users As u 
 ON p.user_id=u.id
 LEFT JOIN comments as c
 ON p.id=c.post_id
 ORDER BY p.views DESC; 