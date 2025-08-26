-- Write a SQL query to find customers who placed orders in both June 2024 and July 2024.



-- solution

SELECT customer_id
FROM Orders 
WHERE (order_date >= '2024-06-01' AND order_date < '2024-08-01')
GROUP BY customer_id
HAVING
	SUM(CASE WHEN YEAR(order_date) = 2024 AND MONTH(order_date) = 6 THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN YEAR(order_date) = 2024 AND MONTH(order_date) = 7 THEN 1 ELSE 0 END) > 0;
    
