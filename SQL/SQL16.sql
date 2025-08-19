-- Query to return each customer_id with their most recent order_date.

USE ap;

CREATE TABLE orders_4(
order_id INT,
customer_id INT,
order_date DATE
);


INSERT INTO orders_4
(order_id, customer_id, order_date)
VALUES
(1,1,'2024-01-01'),
(2,1,'2024-02-15'),
(3,2,'2024-03-01'),
(4,3,'2024-01-20'),
(5,3,'2024-04-05');




SELECT customer_id , MAX(order_date) AS recent_date
FROM 
orders_4
GROUP BY customer_id;