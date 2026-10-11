--one parent can have may child rows
----one user can write many posts
-- but one posts willl always belong to one user

--users- parent atble
--posts- child table

--users.id is the original user id
--posts.user.id stores that original user id inside the posts table

--SHOW ALL POST WITH TTHEIR AUTHOR
SELECT
  users.name As author_name,
  posts.title As posts_title,
  posts.status
  FROM users
  INNER JOIN posts
  ON users.id=posts.user_id
  ORDER BY users.name,posts.title;
    
    