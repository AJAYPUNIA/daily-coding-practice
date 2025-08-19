-- Return all products that had no orders in 2025.
-- Output: product_id, product_name.


-- solution


SELECT  DISTINCT p.product_id , p.product_name 
FROM Products p
LEFT JOIN Orders o 
	On p.product_id = o.product_id 
	AND YEAR(o.order_date) = 2025
WHERE o.product_id IS NULL;
