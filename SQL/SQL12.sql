-- return the customer_id and the number of orders each customer has placed.

CREATE DATABASE yu;


USE yu;


CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE
);


DROP TABLE orders;


INSERT INTO orders
(order_id, customer_id,order_date)
VALUES
(1,101,'2024-01-01'),
(2,102,'2024-01-03'),
(3,101,'2024-01-05'),
(4,103,'2024-01-07'),
(5,101,'2024-01-09');



SELECT customer_id , count(customer_id) AS number_of_orders
FROM orders
GROUP BY customer_id;





