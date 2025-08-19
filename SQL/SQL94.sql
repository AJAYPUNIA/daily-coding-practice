-- : Appointments(patient_id, appointment_date)

-- Task:
-- Write a query to return the list of patient_ids who had appointments on two consecutive days.

-- 📌 Hint: Use window functions like LAG() or LEAD() to compare dates.

-- Would you like a hint or try it first?



-- solution



SELECT patient_id 
FROM (
      SELECT patient_id, appointment_date,
      LAG(appointment_date) OVER (PARTITION BY patient_id ORDER BY appointment_date) AS previous_date
      FROM Appointments
) AS sub
WHERE DATEDIFF(appointment_date, previous_date) = 1; 