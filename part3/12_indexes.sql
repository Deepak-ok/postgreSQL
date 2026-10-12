--index helps postgres find rows faster
--select-> speed up  this particula process

SELECT
  title, 
  status,
  views
  FROM posts;

  SELECT
  title, 
  status,
  views
  FROM posts
  WHERE status='published'

  --idx_posts_status 
  --idx- index
  --posts- table
  --status- column name
  CREATE INDEX IF NOT EXISTS idx_posts_status
  ON posts(status)

SELECT
  title, 
  status,
  views
  FROM posts
  WHERE status='published'
  ORDER by views DESC;

  --composite indexs

  CREATE INDEX IF NOT EXISTS idx_posts_status_views
  ON posts(status, views DESC);

  --users/:id/posts

SELECT
  title, 
  status,
  views
  FROM posts
  WHERE user_id=(
    SELECT id
    FROM users
    WHERE name='Rahul'
  );

   CREATE INDEX IF NOT EXISTS idx_posts_user_id
  ON posts(user_id);

  SELECT indexname, indexdef 
FROM pg_indexes 
WHERE tablename = 'posts';
