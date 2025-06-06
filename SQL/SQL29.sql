#Query to find customers who made more than one order, along with the total number of orders they made.
CREATE DATABASE practise;


USE practise;



CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE,
amount INT
);


INSERT INTO orders
(order_id, customer_id, order_date,amount)
VALUES
(1,101,'2024-01-01',250),
(2,102,'2024-01-03',300),
(3,101,'2024-01-05',100),
(4,103,'2024-01-07',150),
(5,101,'2024-01-10',200);


SELECT * FROM orders;
#solution

SELECT customer_id, COUNT(order_id) as total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) >1;



