-- Write a SQL query to find customers who have not placed any order in the
--  last 30 days from today’s date.

-- Return: customer_id, name

-- solution


SELECT c.customer_id , c.name 
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
					AND o.order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
WHERE o.order_id IS NULL;


