-- a query to find the top 3 customers who have spent the most money in total. 
-- Output their customer_id and the total_spent, sorted in descending order.
-- Orders
-- -------------------------
-- order_id | customer_id | order_date | total_amount


-- solution


SELECT customer_id , SUM(total_amount) AS total_spent
FROM Orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;