-- Query to return each customer_id and their average order value.

USE ap;


CREATE TABLE orders_3(
order_id INT,
customer_id INT,
amount INT
);


INSERT INTO orders_3
(order_id, customer_id, amount)
VALUES
(1,1,200),
(2,1,400),
(3,2,300),
(4,3,100),
(5,3,200),
(6,3,100);



SELECT customer_id, AVG(amount) AS average_value
FROM orders_3
GROUP BY customer_id;
