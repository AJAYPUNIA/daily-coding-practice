-- SQL query to find the product(s) with the highest total quantity sold.


-- SOLUTION


SELECT products.product_name, SUM(orders.quantity) AS total_quantity
FROM products
INNER JOIN orders
ON products.product_id = orders.product_id
GROUP BY products.product_name
ORDER BY total_quantity DESC;