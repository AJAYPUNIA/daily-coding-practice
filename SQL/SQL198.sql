-- Find each customer’s first purchase date, last purchase date, and total amount spent.
-- Then, compute their average monthly spending (difference between first and last month).


-- solution



WITH per_customer AS(
	SELECT 
        customer_id,
        SUM(amount) AS total_spending,
        DATE_FORMAT(MAX(order_date), '%Y-%m-01') AS last_purchase_month,
        DATE_FORMAT(MIN(order_date), '%Y-%m-01') AS first_purchase_month
        FROM Orders
        GROUP BY customer_id
)
SELECT 
	customer_id,
    total_spending,
    last_purchase_month,
    first_purchase_month,
    TIMESTAMPDIFF(MONTH, first_purchase_month, last_purchase_month) AS month_span,
    ROUND(
		total_spending / (TIMESTAMPDIFF(MONTH , first_purchase_month , last_purchase_month) + 1),
        2
	) AS avg_month_spending
FROM per_customer
ORDER BY customer_id;


