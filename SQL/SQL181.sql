-- Write a query to return the top 3 customers with the highest total spending for each year.



-- solution

WITH yearly_spending AS(
	SELECT 
		customer_id, 
        SUM(amount) AS total_spending,
        YEAR(transaction_date) AS year
	FROM transactions
	GROUP BY customer_id , YEAR(transaction_date)
),
ranked AS(
	SELECT 
    customer_id,
    total_spending,
    year,
    RANK() OVER (PARTITION BY year ORDER BY total_spending DESC) AS rnk
    FROM yearly_spending
)
SELECT customer_id , year , total_spending
FROM ranked
WHERE rnk <= 3
ORDER BY year , total_spending DESC;