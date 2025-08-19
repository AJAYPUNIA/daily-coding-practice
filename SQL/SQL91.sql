-- SQL query to return the IDs of patients who had appointments on 3 or more consecutive days. 
-- Each day must be immediately after the previous one.


-- solution



SELECT patient_id 
FROM ( SELECT patient_id , appointment_date,
	 LAG(appointment_date, 1) OVER (PARTITION BY patient_id ORDER BY appointment_date) AS prev1,
     LAG(appointment_date, 2) OVER (PARTITION BY patient_id ORDER BY appointment_date) AS prev2
     FROM Appointments
) AS sub
WHERE DATEDDIFF(appointment_date,prev1) = 1
AND DATEDDIFF(prev1 , prev2) = 1;
