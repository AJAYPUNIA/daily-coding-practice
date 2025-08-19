-- Write an SQL query to find the most frequently purchased product 
-- for each customer based on total quantity.
-- Return:
-- 	•	customer_id,
-- 	•	product_id,
-- 	•	total_quantity.

-- solution

SELECT customer_id , product_id , total_quantity
FROM(
	SELECT customer_id , product_id,
    SUM(quantity) AS total_quantity,
    RANK() OVER (PARTITION BY customer_id ORDER BY total_quantity DESC) AS rnk
    FROM Orders
    GROUP BY customer_id , product_id
    ) ranked_orders
WHERE rnk = 1;