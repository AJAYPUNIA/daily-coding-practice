-- Query to return product names from the 
-- products table that do not appear in the orders table.

SELECT products.product_name
FROM products
LEFT JOIN orders
ON products.product_id = orders.product_id
WHERE orders.product_id IS NULL;
