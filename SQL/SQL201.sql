-- Return the customer_id and their June 2025 total spending and July 2025 total spending,
--  but only for customers whose July spending is strictly greater than June spending. 
--  Order by customer_id.

-- Expected columns:
-- customer_id | june_spending | july_spending


-- solution

WITH monthly_spending AS (
SELECT customer_id, 
		SUM(CASE WHEN YEAR(order_date) = 2025 AND MONTH(order_date) = 06 THEN amount ELSE 0 END) AS june_spending,
        SUM(CASE WHEN YEAR(order_date) = 2025 AND MONTH(order_date) = 07 THEN amount ELSE 0 END) AS july_spending
        FROM Orders
        GROUP BY customer_id
)
SELECT customer_id , june_spending , july_spending
FROM monthly_spending
WHERE july_spending >  june_spending;
        
        
        
        
        
        
        