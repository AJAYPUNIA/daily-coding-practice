-- a SQL query to calculate the average monthly spending per user.

-- Return: user_id, month, total_spent, average_monthly_spending

-- solutin

WITH monthly_spending AS (
	SELECT
		user_id,
		DATE_FORMAT(transaction_date , '%Y-%M') AS month,
		SUM(amount) AS total_spent
	FROM Transactions
    GROUP BY user_id , month
)

SELECT
	user_id,
    month,
    total_spent,
    AVG(total_spent) OVER (PARTITION BY user_id ) AS average_monthly_spending
FROM monthly_spending;