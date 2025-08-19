-- the customers who have ordered every product available in the Products table.

-- solution


SELECT c.customer_id , c.name
FROM Customers c
JOIN Orders o ON o.customer_id = c.customer_id
JOIN Products p ON p.product_id = o.product_id
GROUP BY c.customer_id , c.name
HAVING COUNT(DISTINCT p.product_id) = (SELECT COUNT(*) FROM Products);
