--  a query to find the user_id and transaction_date of users who made 
-- transactions on three consecutive days.

-- solution


SELECT user_id , transaction_date
FROM(
	SELECT user_id , transaction_date,
    LAG(transaction_date,1) OVER (PARTITION BY user_id ORDER BY transaction_date) AS prev_date,
    LAG(transaction_date, 2) OVER (PARTITION BY user_id ORDER BY transaction_date) AS before_prev_date
    FROM Transactions
) date_details
WHERE DATEDIFF(transaction_date, prev_date) = 1
AND DATEDIFF(prev_date, before_prev_date) = 1;