-- finding duplocates emails from the table

CREATE DATABASE gt;

USE gt;

CREATE TABLE users(
id INT,
email VARCHAR(50)
);

INSERT INTO users(id , email)
VALUES
(1,"alice@example.com"),
(2,"bob@example.com"),
(3,"alice@example.com"),
(4,"charlie@example.com"),
(5,"bob@example.com");


SELECT * FROM users;

SELECT email
FROM users
GROUP BY email
HAVING COUNT(email) > 1;





