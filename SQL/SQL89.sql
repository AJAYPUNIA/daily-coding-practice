-- Query to return all patient_ids who had more than one appointment.


-- solution


SELECT patient_id
FROM Appointments
GROUP BY patient_id 
HAVING COUNT(patient_id) > 1;