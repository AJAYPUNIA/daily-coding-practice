--  query to find the top 2 doctors who have treated the highest number of unique patients.



-- solution



SELECT doctor_id ,  COUNT(DISTINCT patient_id ) AS patient_count
FROM Appointments
GROUP BY doctor_id 
ORDER BY patient_count DESC
LIMIT 2;

