-- Query to return the customer_id who has spent the most total money.

USE ap;

CREATE TABLE orders_2(
order_id INT,
customer_id INT,
amount INT
);

INSERT INTO orders_2 
(order_id, customer_id, amount)
VALUES
(1,1,200),
(2,2,450),
(3,1,300),
(4,3,150);


SELECT customer_id, SUM(amount) as total_spent
FROM 
orders_2
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;
