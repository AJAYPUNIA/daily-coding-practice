--  Write a query to find customers who placed orders in both June 2024 and July 2024.



SELECT c.customer_id 
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= '2024-06-01' AND o.order_date < '2024-08-01'
GROUP BY c.customer_id
HAVING
	SUM(CASE WHEN YEAR(o.order_date) = 2024 AND MONTH(o.order_date) = 6 THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN YEAR(o.order_date) = 2024 AND MONTH(o.order_date) = 7 THEN 1 ELSE 0 END) > 0;
    