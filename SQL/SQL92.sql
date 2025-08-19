-- SQL query to return the patient_id and the number of appointments for the patient(s) 
-- who have the highest number of appointments.


-- solution



SELECT patient_id , COUNT(appointment_id) AS total_appointments
FROM Appointments
GROUP BY patient_id
ORDER BY total_appointments DESC
LIMIT 1;

