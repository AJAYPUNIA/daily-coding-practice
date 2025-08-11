-- Write a SQL query to find the top 3 products with 
-- the highest total revenue in 2025.
-- Revenue = price × quantity.
-- Return product_id, product_name, and total_revenue.

-- Products(product_id, product_name, price)
-- Orders(order_id, product_id, quantity, order_date)

-- solution


SELECT p.product_id , p.product_name , SUM(p.price * o.quantity) AS total_revenue
FROM Products p
INNER JOIN Orders o ON p.product_id = o.product_id
WHERE YEAR(o.order_date) = 2025
GROUP BY p.product_id ,p.product_name
ORDER BY total_revenue DESC
LIMIT 3;

