-- Find the longest consecutive login streak (in days) for each user.
-- 	•	Output: user_id, streak_length.
-- 	•	Example:
-- 	•	For user 1: they logged in June 1 and June 2 → streak = 2.
-- 	•	For user 2: only one login day → streak = 1.
-- 	•	For user 3: logged in June 1, June 2, June 3 → streak = 3.


-- Think of this like the “3 consecutive days login” question you did earlier, but now instead of checking exactly 3 days, you need to compute the maximum streak length per user.

-- You’ll likely need:
-- 	•	LAG() to find gaps in dates,
-- 	•	A grouping trick with row numbers to segment streaks,
-- 	•	Then find the max streak per user.


-- solution


WITH login_days AS (
	SELECT DISTINCT user_id, activity_date
    FROM UserActivity
    WHERE activity_type = 'login'
),
lagged AS (
	SELECT
		user_id ,
        activity_date,
        LAG(activity_date) OVER (PARTITION BY user_id ORDER BY activity_date) AS prev_date
        FROM login_days
),
tag AS (
	SELECT 
		user_id,
        activity_date,
        CASE 
			WHEN prev_date IS NULL OR DATEDIFF(activity_date, prev_date) > 1
				THEN 1 ELSE 0
			END  AS is_new
	FROM lagged
),
streak_ids AS (
	SELECT 
		user_id,
		activity_date,
        SUM(is_new) OVER (PARTITION BY user_id ORDER BY activity_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS streak_id
	FROM tag
),
streaks AS (
	SELECT 
		user_id,
        streak_id,
        COUNT(*) AS streak_length
        FROM streak_ids 
        GROUP BY user_id , streak_id
)
SELECT user_id , MAX(streak_length) AS streak_length
FROM streaks
GROUP BY user_id
ORDER BY user_id;

   