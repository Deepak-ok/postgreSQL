--one query insde another query
--runs inner query first then outer query

--which post performing better than average

SELECT
  title, 
  status,
  views
  FROM posts
  WHERE views >(
    SELECT AVG(views)
    FROM posts
    )
    ORDER BY views DESC;