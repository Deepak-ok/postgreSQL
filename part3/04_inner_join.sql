--inner join returns only thet matched rows on both rows

SELECT
  users.name As author_name,
  posts.title As posts_title,
  posts.status
  FROM posts
  INNER JOIN users
  --matching rules
  ON posts.user_id=users.id
  WHERE posts.status='published'
  ORDER BY posts.views DESC; 