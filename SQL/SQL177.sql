-- For each user_id, find the total active time per day in minutes.


WITH time_durations AS(
	SELECT
    user_id,
    DATE(start_time) AS activity_date,
    TIMESTAMPDIFF(MINUTE, start_time, end_time)  AS total_minutes
    FROM Sessions
)
SELECT user_id , activity_date, SUM(total_minutes) AS total_minutes
FROM time_durations
GROUP BY user_id , activity_date
ORDER BY total_minutes DESC;