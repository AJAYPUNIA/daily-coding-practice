-- Write a SQL query to find each customer’s total spending for each month and 
-- also rank them within that month based on spending (highest spender = rank 1).

-- Return:
-- customer_id, month, year, total_spending, rank_in_month
-- Sort by year, month, and rank_in_month.


-- solution

WITH monthly AS(
	SELECT
    customer_id,
    SUM(total_amount) AS total_spending,
    MONTH(order_date) AS mn,
    YEAR(order_date) AS yr
    FROM Orders
    GROUP BY customer_id , MONTH(order_date) , YEAR(order_date)
    
)
SELECT customer_id , mn AS Month , yr AS Year, total_spending,
RANK() OVER (PARTITION BY yr , mn ORDER BY total_spending DESC) AS rank_in_month
FROM monthly
ORDER BY yr , mn , rank_in_month;