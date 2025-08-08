--  a SQL query to return all users who have logged in for 3 consecutive days.


-- solution


SELECT user_id
FROM(
	SELECT user_id , login_date,
    LAG(login_date, 1) OVER(PARTITION BY user_id ORDER BY login_date) AS prev_date,
    LAG(login_date, 2) OVER (PARTITION BY user_id ORDER BY login_date) AS before_prev_date
    FROM Logins
) login_details
WHERE DATEDIFF(login_date, prev_date) = 1
AND DATEDIFF(prev_date, before_prev_date) = 1;