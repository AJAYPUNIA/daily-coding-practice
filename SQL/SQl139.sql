-- Find all users who made at least two transactions, and where the transaction
--  amount increased compared to the previous day.

-- -- Return: user_id, transaction_date, amount



-- SOLUTION


SELECT user_id , transaction_date , amount
FROM ( SELECT user_id , transaction_date , amount,
	  LAG(amount) OVER (PARTITION BY user_id  ORDER BY transaction_date) AS previous_amount
FROM Transactions
) amount_order
WHERE amount > previous_amount;