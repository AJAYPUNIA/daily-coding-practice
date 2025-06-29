-- Find the top 2 doctors who treated the most unique patients.

-- Table:
-- 	•	Appointments(appointment_id, patient_id, doctor_id, appointment_date)

--  Goal: Return the top 2 doctors (doctor_id) by distinct number of patients they’ve seen.


-- solution


SELECT doctor_id , COUNT(DISTINCT patient_id) AS unique_patients
FROM Appointments
GROUP BY doctor_id
ORDER BY unique_patients DESC
LIMIT 2;



