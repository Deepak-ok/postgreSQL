--count unique values
--count how many unique posts are connected to each tags

SELECT 
  t.name AS tag_name,
  COUNT(DISTINCT p.id) AS total_unique_posts
  FROM tags AS t
  JOIN post_tag AS pt
   ON t.id=pt.tag_id
   LEFT JOIN posts AS p
   ON pt.post_id=p.id
   GROUP BY t.id, t.name
   ORDER BY total_unique_posts DESC;
