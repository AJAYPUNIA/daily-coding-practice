-- Query to find the names of customers who have never placed an order.

CREATE DATABASE ap;
USE ap;


CREATE TABLE customers(
customer_id INT,
name VARCHAR(20)
);


INSERT INTO customers
(customer_id, name)
VALUES
(1,'Alice'),
(2,'Bob'),
(3,'Charlie'),
(4,'Diana');



CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE
);
DROP TABLE orders;


INSERT INTO orders
(order_id,customer_id, order_date)
VALUES
(1,1,'2024-01-01'),
(2,2,'2024-01-02');



SELECT customers.name 
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.order_date IS NULL;