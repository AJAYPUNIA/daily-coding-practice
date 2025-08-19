-- SQL query to find all customers who have purchased the same product more than once.

-- Return their customer_id and name.


-- solution

SELECT  DISTINCT c.customer_id , c.name 
FROM Customers c
JOIN(
	SELECT customer_id
    FROM Orders
    GROUP BY customer_id , prodcuct_id
    HAVING COUNT(*) > 1
) repeated_orders ON c.customer_id = repeated_orders.customer_id;