-- Commit to trigger GitHub contribution graph on May 25

CREATE DATABASE JUST_DO_IT;

USE JUST_DO_IT;

CREATE TABLE  orders (
order_id INT(10),
customer_ID INT(20),
order_date INT(50),
amount INT(50)
);

DROP TABLE orders;

INSERT INTO orders (order_id,customer_id,order_date,amount)
VALUES
(1,101,2024-01-01,100),
(2,102,2024-01-02,250),
(3,101,2024-01-03,300),
(4,103,2024-01-04,150);


SELECT * FROM orders;





SELECT customer_id, SUM(amount) as total_amount
FROM orders
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 2;
