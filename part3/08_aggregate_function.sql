--calucalet one result froma many rows
--count()- number ot rows
--sum()- total value
--avg()- average value
-- min()
--max()

--admin dashboard, reports and so on
SELECT
 COUNT(*) AS total_posts
 FROM posts;

 SELECT
 COUNT(*) AS total_posts,
 COUNT(*) FILTER(WHERE status='published') AS published_posts
 FROM posts;

 SELECT
 COUNT(*) AS total_posts,
 COUNT(*) FILTER(WHERE status='published') AS published_posts,
 SUM(views) AS total_views
 FROM posts;

 SELECT
 COUNT(*) AS total_posts,
 COUNT(*) FILTER(WHERE status='published') AS published_posts,
 SUM(views) AS total_views,
 AVG(views) AS avg_views,
 MIN(views) AS lowest_views,
  MAX(views) AS highets_views
 FROM posts;
   


