-- 	•	A user’s cohort_month is the calendar month of signup_date (e.g., 2025-01).
-- 	•	A user is retained in month k (k ∈ {0,1,2,3}) if they have at least one event in the calendar month that is exactly k months after their signup month.
-- 	•	Example: signup = 2025-01-29 → month 0 is 2025-01; month 1 is 2025-02; month 2 is 2025-03; etc.



-- solution


WITH sign_up_2025 AS(
	SELECT 
		u.user_id,
        DATE_FORMAT(u.signup_date, '%Y-%m-01') AS cohort_month
	FROM Users u
    WHERE YEAR(u.signup_date) = 2025
),
event_months AS(
	SELECT
		e.user_id,
        DATE_FORMAT(e.event_date , '%Y-%m-01') AS event_month
	FROM Events e
    GROUP BY e.user_id , DATE_FORMAT(e.event_date , '%Y-%m-01')
),
mapped AS (
	SELECT 
		s.cohort_month,
        s.user_id,
        TIMESTAMPDIFF(MONTH, s.cohort_month,  em.event_month) AS k 
	FROM sign_up_2025 s
    LEFT JOIN event_months em
		 ON em.user_id = s.user_id
)
SELECT
  cohort_month,
  COUNT(DISTINCT CASE WHEN k = 0 THEN user_id END) AS m0,
  COUNT(DISTINCT CASE WHEN k = 1 THEN user_id END) AS m1,
  COUNT(DISTINCT CASE WHEN k = 2 THEN user_id END) AS m2,
  COUNT(DISTINCT CASE WHEN k = 3 THEN user_id END) AS m3
FROM mapped
GROUP BY cohort_month
ORDER BY cohort_month;


