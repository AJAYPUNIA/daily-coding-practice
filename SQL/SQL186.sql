-- Write a query to find all customers who placed orders in 3 consecutive months.

-- Expected: return customer_id with the start month and end month of that 3-month streak.


-- solution


WITH monthly_levels AS (
	SELECT DISTINCT
		customer_id,
        DATE_FORMAT(order_date , '%Y-%m-01')AS month_start,
        YEAR(order_date) AS yr,
        MONTH(order_date) AS mo
	FROM Orders
),
indexed AS (
	SELECT
		customer_id, 
        month_start,
        (yr * 12 + mo) AS month_idx,
        ROW_NUMBER() OVER (
			PARTITION BY customer_id
            ORDER BY (yr * 12 + mo)
		) AS rn 
	FROM monthly_levels
),
grouped AS (
	SELECT 
		customer_id,
		MIN(month_start) AS start_month,
		MAX(month_start) AS end_month,
		COUNT(*)  AS streak_len
   FROM (
	SELECT
    customer_id,
    month_start,
    month_idx - rn AS grp_key
    FROM indexed
) t
	 GROUP BY customer_id , grp_key
)
SELECT customer_id , start_month , end_month
FROM grouped
WHERE streak_len >= 3
ORDER BY customer_id , start_month;
