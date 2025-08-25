-- Write a query to find the customers who placed orders in both June 2025 and July 2025.


-- solution


SELECT c.customer_id , c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= '2025-06-01' AND o.order_date < '2025-08-01'
GROUP BY c.customer_id , c.name
HAVING
	SUM(CASE WHEN YEAR(o.order_date) = 2025 AND MONTH(o.order_date) = 6 THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN YEAR(o.order_date) = 2025 AND MONTH(o.order_date) = 7 THEN 1 ELSE 0 END)> 0;
    
     