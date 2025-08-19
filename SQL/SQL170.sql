-- Write a SQL query to find each customer’s month-over-month 
-- percentage change in sales amount.
-- Return:
-- customer_id, month, total_amount, prev_month_amount, percent_change-- 

-- solution

WITH monthly AS(
	SELECT
    customer_id,
    MONTH(sale_date) AS mn,
    YEAR(sale_date) AS yr,
    SUM(amount) AS total_amount
    FROM Sales
    GROUP BY customer_id , YEAR(sale_date) , MONTH(sale_date)
),
with_prev AS(
	SELECT 
    customer_id,
    yr,
    mn,
    total_amount,
    LAG(total_amount) OVER(PARTITION BY customer_id ORDER BY yr, mn) AS prev_month_amount
	FROM monthly
)
SELECT customer_id,
	CONCAT(yr, '-' ,LPAD(mn, 2, '0')) AS month,
    total_amount,
    prev_month_amount,
    ROUND(
		100.0 * (total_amount - prev_month_amount) / NULLIF(prev_month_amount, 0),
        2
	) AS percentage_change
FROM with_prev
ORDER BY customer_id , yr, mn;
    


