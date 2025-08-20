-- user_id      INT.  ###hard keep practising 
-- event_time   TIMESTAMP   -- when the event happened

-- Definitions
-- 	•	A session for a user is a sequence of events where the gap between consecutive events is ≤ 30 minutes.
-- 	•	If the gap is > 30 minutes, a new session starts.
-- 	•	The session duration is last_event_time_in_session - first_event_time_in_session.

-- Task
-- For June 2025:
-- 	1.	Build sessions per user_id using the 30‑minute rule.
-- 	2.	Compute total session time per user in June 2025 (sum of durations across that user’s sessions).
-- 	3.	Return the top 5 users by total session time, with:



WITH june_events AS(
	SELECT
		user_id,
        event_time
	FROM Events
    WHERE event_time >= '2025-06-01' AND event_time < '2025-07-01'
),
marked AS (
	SELECT
		user_id,
        event_time,
        TIMESTAMPDIFF(
			MINUTE,
            LAG(event_time) OVER (PARTITION BY user_id ORDER BY event_time),
            event_time
		)	AS gap_min
	FROM june_events
),
sessioned AS (
	SELECT
		user_id,
        event_time,
        CASE
			WHEN gap_min IS NULL OR gap_min > 30 THEN 1
            ELSE 0
		END AS is_new_session
	FROM marked
),
session_ids AS (
	SELECT
		user_id,
        event_time,
        SUM(is_new_session) OVER( PARTITION BY user_id ORDER BY event_time
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
	  ) AS session_id
	FROM sessioned
),
session_spans AS(
	SELECT
		user_id,
        session_id,
        MIN(event_time) AS session_start,
        MAX(event_time) AS session_end
	FROM session_ids
    GROUP BY user_id, session_id
),
session_duration AS (
	SELECT 
		user_id,
        TIMESTAMPDIFF(MINUTE , session_start , session_end) AS session_minutes
	FROM session_spans
)
SELECT 
	user_id,
    SUM(session_minutes) AS total_session_minutes
FROM session_durations
GROUP BY user_id
ORDER BY total_session_minutes DESC, user_id ASC
LIMIT 5;


    

        