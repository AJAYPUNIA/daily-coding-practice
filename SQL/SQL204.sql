-- Find all customers who placed orders in both January 2024 and February 2024.


SELECT customer_id
FROM Orders
WHERE YEAR(order_date) = 2024 
GROUP BY customer_id
HAVING
	SUM(CASE WHEN MONTH(order_date) = 1 THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN MONTH(order_date) = 2 THEN 1 ELSE 0 END) > 0
;