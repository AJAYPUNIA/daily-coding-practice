-- Write a SQL query to find the product(s) that generated the highest total revenue.
-- (Revenue = price × quantity)


-- solution

SELECT  DISTINCT p.product_id, p.product_name , SUM(p.price * o.quantity) AS revenue
FROM Products p
INNER JOIN Orders o ON o.product_id = p.product_id
GROUP BY p.product_id , p.product_name
ORDER BY revenue DESC
LIMIT 1;