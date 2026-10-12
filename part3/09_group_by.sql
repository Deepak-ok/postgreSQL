--group by creates group of rows
--where -> filters normal rows before returning
--HAVING filter group after grouping

--find authors who have written at leats 2 posts

SELECT
  u.name AS author_name,
  COUNT(p.id) AS total_posts,
  SUM(p.views) AS total_views
  FROM users AS u
  LEFT JOIN posts AS p
  ON u.id=p.user_id
  GROUP BY u.id,u.name
  HAVING COUNT(p.id) >=2
  ORDER BY total_posts DESC;