--  Write a SQL query to find all customers who made at least two purchases on consecutive days.

SELECT DISTINCT customer_id
FROM (
	 SELECT customer_id,
            order_date,
			LAG(order_date) OVER (PARTITION BY customer_id ORDER BY order_date)AS prev_date
	FROM Orders
) t
WHERE DATEDIFF(order_date , prev_date )= 1;