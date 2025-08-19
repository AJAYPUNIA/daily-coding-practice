-- Query to find the doctor(s) who have treated the highest number of distinct patients.


-- solution


SELECT DISTINCT doctor_id , COUNT(DISTINCT patient_id) as unique_patients
FROM Appointments
GROUP BY doctor_id
ORDER BY unique_patients DESC;