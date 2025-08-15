-- For each user and date, compute the 7‑day rolling total (including the current day).
-- Return: user_id, txn_date, amount, rolling_7d_total, ordered by user_id, txn_date.


-- solution


SELECT user_id , txn_date , SUM(amount) OVER(
		PARTITION BY user_id
        ORDER BY txn_date
        RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
        ) AS rolling_7d_total
FROM Transactions
ORDER BY user_id , txn_date;