-- SQL query to find all patient_ids who visited more than once on the same day.


-- solution

SELECT patient_id , visit_date
FROM Appointments
GROUP BY patient_id , visit_date
HAVING COUNT(*) > 1;