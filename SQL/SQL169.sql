-- Task:
-- Find all user_id who placed another order within 30 days of their previous order.
-- Return: user_id, prev_order_date, next_order_date.

-- solution


SELECT user_id , prev_order_date , (purchase_date) AS next_order_date
FROM(
	SELECT user_id , purchase_date,
    LAG(purchase_date, 1)  OVER(PARTITION BY user_id ORDER BY purchase_date) AS prev_order_date
    FROM Orders
) date_details
WHERE prev_order_date IS NOT NULL
	AND DATEDIFF(purchase_date , prev_order_date) <=30;
    
    