-- Write a SQL query to find all users who were active on at least 2 consecutive
--  days.

-- Return: user_id, activity_date (the later date of the consecutive pair).

-- solution


SELECT user_id , activity_date
FROM(
	SELECT user_id , activity_date,
    LAG(activity_date) OVER (PARTITION BY user_id ORDER BY activity_date) AS previous_date
    FROM UserActivity
) users_activity
WHERE DATEDIFF(activity_date, previous_date) = 1;

