--  Query to return each customer’s total order amount and only 
--  include those whose total amount is greater than 400.


CREATE DATABASE ik;

USE ik;



CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE,
amount INT
);



INSERT INTO orders
(order_id , customer_id, order_date, amount)
VALUES
(1,1,'2024-01-01',200),
(2,2,'2024-01-01',100),
(3,1,'2024-01-03',300),
(4,3,'2024-01-04',150),
(5,2,'2024-01-06',250);



SELECT * FROM orders;


#solution

SELECT customer_id , SUM(amount) as total_amount
FROM orders
GROUP BY customer_id 
HAVING total_amount > 400;


