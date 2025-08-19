-- SQL query to find users who logged in on two consecutive days.

-- Return just the user_id and the later login_date (the second day of the pair).


-- solution


SELECT user_id , login_date
FROM (SELECT user_id , login_date,
	 LAG(login_date) OVER (PARTITION BY user_id ORDER BY login_date) AS previous_date
     FROM Logins
) inline_users
WHERE DATEDIFF(login_date, previous_date) = 1;
