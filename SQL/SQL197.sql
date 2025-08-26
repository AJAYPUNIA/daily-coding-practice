-- Write a query to find, for each user, their total spending in June 2024 
-- and total spending in July 2024,side by side in columns:


-- solution


SELECT user_id ,
	SUM(CASE WHEN YEAR(transaction_date) = 2024 AND MONTH(transaction_date) = 6 THEN amount ELSE 0 END)  AS june_spending,
    SUM(CASE WHEN YEAR(transaction_date) = 2024 AND MONTH(transaction_date) = 7 THEN amount ELSE 0 END)  AS july_spending
FROM Transactions
GROUP BY user_id;