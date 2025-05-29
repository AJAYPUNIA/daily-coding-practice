-- query to find all customer IDs that have placed more than one order.


CREATE DATABASE ut;

USE ut;

CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date INT
);


INSERT INTO orders(order_id, customer_id, order_date)
VALUES
(1,101,2024-01-01),
(2,102,2024-01-03),
(3,101,2024-01-05),
(4,103,2024-01-07);



SELECT * FROM orders;


SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(customer_id) >1;

