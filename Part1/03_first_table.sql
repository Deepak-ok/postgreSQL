DROP TABLE IF EXISTS basics.student;

CREATE TABLE basics.student(
    --Create an auto increasing integer.
    --1,2,3 and so on.
    --primary key simply means this col indentifies each
    id SERIAL PRIMARY KEY,

    --text- string data,
    --not null means this col is requires
    --ppstgres is hoing to reject if this name value is not present

    name TEXT NOT NULL,

    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK(AGE>=10),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.student(name,email,age)
values ('sangam', 'sangam@gmai.com', 20),
       ('lala', 'lala@gmai.com', 25),
       ('ramu', 'ramu@gmai.com', 14);


SELECT * FROM basics.student;
