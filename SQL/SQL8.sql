-- find customer IDs who placed orders on more than one unique date.


CREATE DATABASE uy;

USE uy;


CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date INT
);


INSERT INTO orders
(order_id, customer_id, order_date)
VALUES
(1,101,2024-01-01),
(2,101,2024-01-01),
(3,101,2024-01-05),
(4,102,2024-01-02),
(5,102,2024-01-02),
(6,103,2024-01-03),
(7,103,2024-01-05);


SELECT * FROM orders;

SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT( DISTINCT order_date) > 1;



