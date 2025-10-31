-- Scores

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | student_id  | int     |
-- | subject     | varchar |
-- | score       | int     |
-- | exam_date   | varchar |
-- +-------------+---------+
-- (student_id, subject, exam_date) is the primary key for this table.
-- Each row contains information about a student's score in a specific subject on a particular exam date. score is between 0 and 100 (inclusive).
-- Write a solution to find the students who have shown improvement. A student is considered to have shown improvement if they meet both of these conditions:

-- Have taken exams in the same subject on at least two different dates
-- Their latest score in that subject is higher than their first score
-- Return the result table ordered by student_id, subject in ascending order.

-- solution


WITH first_last_dates AS (
	SELECT 
		student_id,
        subject,
        MIN(exam_date) AS first_date,
        MAX(exam_date) AS lastest_date
        FROM Scores
        GROUP BY student_id , subject
)
SELECT 
	s1.student_id,
    s1.subject,
    s1.score AS first_score,
    s2.score AS latest_score
FROM first_last_dates f
JOIN Scores s1
	ON f.student_id = s1.student_id
    AND f.subject = s1.subject
    AND f.first_date = s1.exam_date
JOIN Scores s2
	ON f.student_id = s2.student_id
    AND f.subject = s2.subject
    AND f.latest_date = s2.exam_date
WHERE s2.score > s1.score
GROUP BY s1.student_id , s1.subject;

