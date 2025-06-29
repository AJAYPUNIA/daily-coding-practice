-- Find the date(s) when more than 3 appointments happened.

-- Table: Appointments(appointment_id, patient_id, doctor_id, appointment_date)

-- Goal: Return the appointment_date values where more than 3 appointments were scheduled.


-- solution


SELECT appointment_date
FROM Appointments 
GROUP BY appointment_date
HAVING COUNT(appointment_date) > 3;