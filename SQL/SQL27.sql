#query to return each customer’s total sale amount, sorted in descending order of total sale


CREATE DATABASE gv;

USE gv;


CREATE TABLE sales(
sale_id INT,
customer_id INT,
sale_amount INT,
sale_date DATE
);



INSERT INTO sales
(sale_id, customer_id, sale_amount,sale_date)
VALUES
(1,101,200,'2024-01-01'),
(2,102,300,'2024-01-02'),
(3,101,150,'2024-01-03'),
(4,103,100,'2024-01-03'),
(5,102,250,'2024-01-04');


SELECT * FROM sales;



# solition 

SELECT customer_id , SUM(sale_amount) AS total_amount
FROM sales
GROUP BY customer_id
ORDER BY total_amount DESC;
