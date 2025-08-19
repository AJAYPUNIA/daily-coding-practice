-- For each month (year + month), find the top 2 customers by total spending in that month.
-- Return: year, month, customer_id, name, total_spending, rank_in_month
-- Order by year, month, rank_in_month.

-- solution

WITH monthly AS (
	SELECT 
    c.customer_id,
    c.name,
    MONTH(o.order_date) AS mn,
    YEAR(o.order_date) AS yr,
    SUM(o.total_amount) AS total_spending
    FROM Customers c
	JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id ,c.name,  YEAR(o.order_date) , MONTH(o.order_date)
),
ranked AS(
	SELECT
		customer_id,
        name,
        yr, 
        mn,
        total_spending,
        RANK() OVER(PARTITION BY yr , mn ORDER BY total_spending DESC) AS rank_in_month
        FROM monthly
)
SELECT customer_id , name , yr AS Year , mn AS Month , total_spending , rank_in_month
FROM ranked
WHERE rank_in_month <= 2
ORDER BY Year , Month , rank_in_month , total_spending DESC;
