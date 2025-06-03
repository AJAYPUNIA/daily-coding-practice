-- QUERY to Find customers who placed their most recent order after January 1, 2024


CREATE DATABASE fv;

USE fv;


CREATE TABLE orders(
customer_id INT,
order_id INT,
order_date date
);


INSERT INTO orders
(customer_id, order_id, order_date)
VALUES
(1,101,'2023-12-30'),
(2,102,'2024-01-02'),
(3,103,'2024-01-01'),
(1,104,'2024-01-05'),
(2,105,'2023-12-20');


SELECT * FROM orders;



# solution 

SELECT customer_id , MAX(order_date) AS latest_date
FROM orders
GROUP BY customer_id
HAVING MAX(order_date) > '2024-01-01';