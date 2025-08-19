#query to return the customer_id who has placed the highest total order amount.

CREATE DATABASE rs;


USE rs;


CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE,
amount INT
);


INSERT INTO orders
(order_id, customer_id, order_date,amount)
VALUES
(1,101,'2024-01-01',200),
(2,101,'2024-01-03',300),
(3,102,'2024-01-05',150),
(4,103,'2024-01-07',400),
(5,101,'2024-01-10',100),
(6,102,'2024-01-11',200);


SELECT * FROM orders;



# solution



SELECT customer_id , SUM(amount) as total_amount
FROM orders
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 1;