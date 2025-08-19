-- Write a query to find the top 3 customers who spent the most money in 2024.
-- Show:
-- 	•	customer_id
-- 	•	total_spent

-- Order the result by total_spent in descending order.

-- solution

SELECT customer_id , SUM(amount) AS total_spending 
FROM Orders
WHERE YEAR(order_date) =2024
GROUP BY customer_id 
ORDER BY total_spending DESC
LIMIT 3;