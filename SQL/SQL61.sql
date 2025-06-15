-- query to find the names of products that were never ordered.

SELECT products.product_name
FROM products
LEFT JOIN orders
ON products.product_id = orders.product_id
WHERE  orders.product_id IS NULL;