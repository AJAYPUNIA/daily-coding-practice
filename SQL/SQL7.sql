-- Query to return the most recent (latest) order date for each customer.

CREATE DATABASE DT;
USE DT;

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


SELECT customer_id, MAX(order_date) AS latest_date
FROM orders
GROUP BY customer_id;