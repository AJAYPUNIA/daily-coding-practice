#query to return each customer_id and their total sale_amount, sorted from highest to lowest.
CREATE DATABASE et;

USE et;

CREATE TABLE sales(
customer_id INT,
sale_amount INT
);


INSERT INTO sales
(customer_id, sale_amount)
VALUES
(1, 100),
(2 , 150),
(1 ,200),
(3 ,50),
(2 ,100);


SELECT * FROM sales;


#solution

SELECT customer_id, SUM(sale_amount) AS total_amount
FROM sales
GROUP BY customer_id
ORDER BY total_amount DESC;