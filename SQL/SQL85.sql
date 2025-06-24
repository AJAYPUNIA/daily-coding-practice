--  SQL query to find the doctor_id of the second most visited doctor (based on total number of visits).


-- solution


SELECT doctor_id , COUNT(visit_id) as total_visits
FROM Visits
GROUP BY doctor_id
ORDER BY total_visits DESC
LIMIT 1 OFFSET 1;
