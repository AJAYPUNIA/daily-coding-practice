-- Write a SQL query to find users who logged in for 3 consecutive days.

-- Return: user_id, login_date (the latest date of the 3-day streak)


-- solution

SELECT user_id , login_date
FROM(
	SELECT user_id , login_date,
    LAG(login_date,1) OVER (PARTITION BY user_id ORDER BY login_date)  previous_date,
    LAG(login_date, 2) OVER (PARTITION BY user_id ORDER BY login_date) AS previous_date_2
    FROM Logins
) users_dates
WHERE DATEDIFF(login_date, previous_date) = 1
 AND DATEDIFF(previous_date, previous_date_2) =1;