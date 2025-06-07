CREATE DATABASE cf;


USE cf;


CREATE TABLE orders(
order_id INT,
customer_id INT,
amount INT
);


INSERT INTO orders
(order_id,customer_id,amount)
VALUES
(1,101,250),
(2,102,300),
(3,101,450),
(4,103,150),
(5,102,200);



SELECT * FROM orders;


#SOLUTION
SELECT customer_id , SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id 
ORDER BY total_amount DESC;
