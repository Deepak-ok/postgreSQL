--one posts can have multiple tags
--one tag can be associated with multiple posts

--posts.id===posts.tags.post_id
--tags.id==post_tags.tag.id

--show me every postswith it's tag

SELECT 
 posts.title As posts_title,
 tags.name AS tags_name
 FROM posts
 INNER JOIN post_tags
 ON posts.id=post_tags.post_id
 INNER JOIN tags
 ON post_tags.tag_id=tags.id
 ORDER BY posts.title, tags.name;