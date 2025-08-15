-- Return all user_id who have at least one streak of 3 consecutive days of logins.
-- Output: user_id (unique list).


-- solution

SELECT DISTINCT user_id
FROM(
	SELECT user_id , login_date,
    LAG(login_date, 1) OVER (PARTITION BY user_id ORDER BY login_date) AS prev_date,
    LAG(login_date, 2) OVER (PARTITION BY user_id ORDER BY login_date) AS day_before_prev
    FROM Logins
) login_details
WHERE DATEDIFF(login_date, prev_date) = 1
AND DATEDIFF(prev_date , day_before_prev) = 1;