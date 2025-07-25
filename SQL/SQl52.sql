-- query to find the top 2 most ordered products by total quantity.


-- SOLUTION

SELECT products.product_name , SUM(orders.quantity) AS total_quantity
FROM products
INNER JOIN orders
ON products.product_id = orders.product_id
GROUP BY products.product_name
ORDER BY total_quantity DESC
LIMIT 2;