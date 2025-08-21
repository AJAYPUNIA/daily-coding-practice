-- Table: Transactions.   #hard keep learning
-- user_id    INT
-- txn_date   DATE
-- amount     DECIMAL
-- Task: For each user_id, find their longest streak of consecutive days 
-- with at least one transaction, and return:
-- user_id | streak_start | streak_end | streak_length
-- 	If multiple streaks tie for longest, return the earliest one (smallest streak_start).
-- 	•	Order output by user_id.


-- solution
WITH days AS (
	SELECT DISTINCT user_id , txn_date
    FROM Transactions
),
lagged AS (
	SELECT
		user_id,
        txn_date,
        LAG(txn_date) OVER( PARTITION BY user_id ORDER BY txn_date
        ) AS prev_date
	FROM days
),
tag AS (
	SELECT
		user_id,
        txn_date,
        CASE
			WHEN prev_date IS NULL OR DATEDIFF(txn_date , prev_date) > 1 THEN 1
            ELSE 0
		END AS is_new
	FROM lagged
),
sessions AS (
	SELECT
		user_id,
        txn_date,
        SUM(is_new) OVER( PARTITION BY user_id ORDER BY txn_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS sess_id
	FROM tag
),
streaks AS (
	SELECT
		user_id,
        MIN(txn_date) AS streak_start,
        MAX(txn_date) AS streak_end,
        COUNT(*) AS streak_length
	FROM sessions
    GROUP BY user_id, sess_id
),
ranked AS (
	SELECT
		user_id,
        streak_start,
        streak_end,
        streak_length,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY streak_length DESC , streak_start ASC
        ) AS rn
	FROM streaks
)
SELECT user_id , streak_start , streak_end, streak_length
FROM ranked
WHERE rn = 1
ORDER BY user_id;
