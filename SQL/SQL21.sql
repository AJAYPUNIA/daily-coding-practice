-- Query to find the customer_id who has spent the most total amount across all orders.

CREATE DATABASE fb;

USE fb;

CREATE TABLE orders_2(
order_id INT,
customer_id INT,
amount INT
);


INSERT INTO orders_2
(order_id,customer_id, amount)
VALUES
(301,1,200),
(302,2,500),
(303,3,100),
(304,1,250),
(305,2,300),
(306,3,200);


SELECT * FROM orders_2;



SELECT customer_id , SUM(amount) as total_amount
FROM orders_2
GROUP BY customer_id 
ORDER BY total_amount DESC
LIMIT 1;

