-- Write a SQL query to find all product IDs that have been ordered by
--  every customer.

-- Return: product_id

-- solution

SELECT prodcut_id 
FROM Orders 
GROUP BY product_id
HAVING COUNT(DISTINCT customer_id)  = (SELECT COUNT(*) FROM Customers);
