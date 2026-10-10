--null -unknown/ missing val
--empty string -known string val but it contains no character
--zero- actual numeric value of 0

DROP TABLE IF EXISTS basics. values_examples;

CREATE TABLE basics. values_examples(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics. values_examples(nickname, bio, score)
VALUES (null, 'learning postgresSQL', 100),
       ('', 'empty postgresSQL', 10),
       ('sangam', '', 25),
       ('john', null, null);

SELECT * FROM basics. values_examples;

SELECT * FROM basics. values_examples WHERE nickname IS NULL;

SELECT * FROM basics. values_examples WHERE nickname IS NOT NULL;

SELECT * FROM basics. values_examples WHERE score=100;3