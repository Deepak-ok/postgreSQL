--foreign key is a col that points to  the primay key of another table
--users.id-parent key
--posts.user.id- foreign key
--every posts u will create that must belong to a existing user

SELECT id, name
FROM users;

SELECT id, user_id, title
FROM posts;