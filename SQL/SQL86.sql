--  Query to find all patients who had appointments on two or more consecutive days. Return the patient IDs.



SELECT DISTINCT patient_id 
FROM (
      SELECT 
         patient_id,
         appointment_date,
         LAG(appointment_date) OVER (PARTITION BY patient_id ORDER BY appointment_date) AS previous_date
	  FROM Appointments
) AS sub
WHERE DATEDIFF(appointment_date , previous_date) = 1;
	
