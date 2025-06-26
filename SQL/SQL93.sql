-- Patients with Multiple Appointments in One Day

-- Table: Appointments
-- Columns:
-- 	•	appointment_id (int)
-- 	•	patient_id (int)
-- 	•	appointment_date (date)

--  Task:
-- Write a SQL query to find all patient_ids who had more than one appointment on the same day.

-- solution


SELECT  appointment_date, patient_id
FROM Appointments
GROUP BY appointment_date, patient_id
HAVING COUNT(appointment_id) >= 2;
