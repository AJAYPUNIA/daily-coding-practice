-- Query to Find products that were never ordered.


-- SOLUTION


SELECT products.product_id , products.product_name 
FROM products
LEFT JOIN orders
ON products.product_id = orders.product_id
WHERE orders.product_id IS NULL;