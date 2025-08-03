-- Find customers who have ordered every product available in the Products table.

-- Return: customer_id, name

-- solution

SELECT c.customer_id , c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Products p ON o.product_id = p.product_id
GROUP BY c.customer_id , c.name
HAVING COUNT( DISTINCT p.product_id) = (SELECT  COUNT(*) FROM Products) 
