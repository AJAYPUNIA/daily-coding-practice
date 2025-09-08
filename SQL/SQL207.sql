-- Find the top 3 products by total revenue in 2024.
-- Revenue is calculated as quantity × price.


-- solution


SELECT p.product_id , p.product_name , SUM(p.price * o.quantity) AS total_revenue
FROM Products p
JOIN Orders o  ON p.product_id = o.product_id
WHERE YEAR(o.order_date) = 2024
GROUP BY p.product_id , p.product_name
ORDER BY total_revenue DESC
LIMIT 3;
