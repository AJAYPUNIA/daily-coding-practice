-- We want to find the top 2 products by revenue in each month of 2024.
-- 	•	Revenue = quantity * price.
-- 	•	Return: month, product_id, product_name, total_revenue.
-- 	•	Ordered by month and rank.


WITH monthly AS(
	SELECT
		MONTH(o.order_date) AS mo,
        YEAR(o.order_date) AS yr,
        o.product_id,
        o.product_name,
        SUM(o.quantity * p.price) AS total_revenue
        FROM Orders o
        JOIN Prodcuts p ON p.product_id = o.product_id
        WHERE YEAR(order_date) = 2024
        GROUP BY YEAR(order_date),
				MONTH(order_date),
                o.product_id,
                o.product_name
),
ranked AS (
	SELECT 
		yr,
        mo,
        product_id,
        product_name,
        total_revenue,
        DENSE_RANK() OVER (PARTITION BY yr , mo ORDER BY total_revenue DESC ) AS rnk
	FROM monthly
)
SELECT 
	CONCAT(yr, '-' , LPAD(mo, 2 , '0')) AS month,
    product_id,
    product_name,
    total_revenue
FROM ranked
WHERE rnk <=2
ORDER BY yr , mo, rnk;

        

    



        

