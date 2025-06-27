-- SQL query to find the earliest (first) appointment date for each patient.


-- solution


SELECT patient_id , MIN(appointment_date) AS earliest_date
FROM Appointments
GROUP BY patient_id;