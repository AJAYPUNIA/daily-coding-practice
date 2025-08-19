--  query to find customers who made purchases in every single month of 2024 
--  (up to the latest month in the data).

-- solution


WITH monthly_data AS(
	SELECT 
		customer_id,
		COUNT( DISTINCT MONTH(order_date)) AS month_count
        FROM Orders
        WHERE YEAR(order_date) = 2024
        GROUP BY customer_id
),
total_months AS(
	SELECT COUNT(DISTINCT MONTH(order_date)) AS total_months
    FROM Orders
    WHERE YEAR(order_date) = 2024
)
SELECT m.customer_id , m.month_count
FROM monthly_data m
CROSS JOIN total_months t
WHERE m.month_count = t.total_months;

        
        