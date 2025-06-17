-- top 2 products that generated the highest total revenue, assuming revenue is 
-- calculated as price × quantity


-- Solution

SELECT products.product_id , products.product_name , SUM(products.price * orders.quantity) AS total_revenue
FROM products
INNER JOIN orders
ON products.product_id = orders.product_id
GROUP BY products.product_id , products.product_name
ORDER BY total_revenue DESC
LIMIT 2;