-- You are given a table Orders with the following columns:
-- 	•	order_id
-- 	•	customer_id
-- 	•	order_date
-- 	•	amount

-- Write a SQL query to find the total spending of each customer in 2024 and return only those 
-- customers whose total spending is greater than the average spending of all customers in 2024.

-- Expected Output:
-- 	•	customer_id
-- 	•	total_spending


-- solution

WITH customer_spending AS(
	SELECT 
		customer_id,
        SUM(amount) AS total_spending
	FROM Orders
    WHERE YEAR(order_date) = 2024
    GROUP BY customer_id
)
SELECT customer_id , total_spending
FROM customer_spending
WHERE total_spending > (SELECT AVG(total_spending) FROM customer_spending)
ORDER BY total_spending DESC;