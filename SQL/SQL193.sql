-- Orders(order_id, customer_id, product_id, order_date, quantity)
-- Products(product_id, product_name, price)

-- Task: For June 2025, find the top 2 products by total revenue 
-- (revenue = price * quantity) within each month (i.e., just June here).
-- Return: month, product_id, product_name, total_revenue, rank_in_month
-- Order the final result by month, rank_in_month.-- 


-- solution


WITH monthly AS(
	SELECT
		o.product_id,
        MONTH(o.order_date) AS mo,
        YEAR(o.order_date) AS yr,
        p.product_name,
        SUM(o.quantity* p.price) AS total_revenue
	FROM  Orders o
    JOIN Products p ON o.product_id = p.product_id
    WHERE o.order_date >= '2025-06-01'
    AND o.order_date < '2025-07-01'
    GROUP BY o.product_id , p.product_name , MONTH(o.order_date), YEAR(o.order_date)
)
SELECT 
	CONCAT(yr , '-' , LPAD(mo, 2 , '0')) AS month,
    product_id,
    product_name,
    total_revenue,
    rank_in_month
FROM (
	SELECT
		product_id,
        product_name,
        yr,
        mo,
        total_revenue,
        RANK() OVER (PARTITION BY yr , mo ORDER BY total_revenue DESC ) AS rank_in_month
	FROM monthly
) r
WHERE rank_in_month <= 2
ORDER BY yr , mo,  rank_in_month;
    


    
    