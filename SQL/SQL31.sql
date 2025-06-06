CREATE DATABASE ju;

USE ju;


CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE,
amount INT
);


INSERT INTO orders
(order_id,customer_id,order_date,amount)
VALUES
(1,1,'2024-01-05',200),
(2,2,'2024-01-07',350),
(3,1,'2024-02-10',150),
(4,3,'2024-02-15',500),
(5,2,'2024-03-01',300);
#Query to return the customer_id who placed the most orders.

SELECT * FROM orders;


#solution 


SELECT customer_id, COUNT(order_id) as order_final
FROM orders
GROUP BY customer_id
ORDER BY order_final DESC
LIMIT 1;
