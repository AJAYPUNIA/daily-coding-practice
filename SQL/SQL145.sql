--  a SQL query to find all products that were never ordered.

-- Return: product_id, product_name


-- solution
SELECT Products.product_id , Products.product_name
FROM Products
LEFT JOIN Orders
ON Products.product_id = Orders.product_id 
WHERE Orders.product_id IS NULL;