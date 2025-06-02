-- Query to find all customer_ids who have placed more than one order.

CREATE DATABASE sr;

USE sr;


CREATE TABLE orders(
order_id INT,
customer_id INT,
amount INT
);

INSERT INTO orders
(order_id, customer_id,amount)
VALUES
(201,1,200),
(202,2,300),
(203,1,150),
(204,3,400),
(205,2,250),
(206,2,100);



SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(customer_id) > 1;
