-- Write a SQL query to find each customer’s total spending in June 2025,
--  and only return customers who spent more than $300 that month.
-- Order the results by total spending in descending order.


-- solution

SELECT customer_id , SUM(total_amount) AS total_spending 
FROM Orders
WHERE MONTH(order_date) = 06 AND YEAR(order_date) = 2025
GROUP BY customer_id 
HAVING SUM(total_amount) >= 300
ORDER BY total_spending DESC;