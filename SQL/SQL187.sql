-- Write a SQL query to find each customer’s first order date and last order date in 2024.

-- solution


SELECT customer_id , MIN(order_date) AS first_order_date , MAX(order_date) AS last_order_date
FROM Orders
WHERE YEAR(order_date) = 2024 
GROUP BY customer_id;

