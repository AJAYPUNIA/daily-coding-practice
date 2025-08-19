--  the top 2 most ordered products (by total quantity) for each month.

-- Return: month, product_id, total_quantity


-- solution


WITH montly_detail AS (
	SELECT
		product_id,
        DATE_FORMAT(order_date , '%Y-%M') as month,
        SUM(quantity) AS total_quantity
        FROM Orders
        GROUP BY product_id , month
),
ranked_product AS (
	SELECT *,
			RANK() OVER (PARTITION BY month ORDER BY total_quantity DESC) AS rnk
    FROM monthly_detail
)
SELECT month, product_id , total_quantity
FROM ranked_products
WHERE rnk = 2;