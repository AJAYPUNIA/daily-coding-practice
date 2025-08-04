-- Write a SQL query to find all employees who joined in the same year as
--  their manager.

-- Return: employee_id, name

-- solution

SELECT employee_id , name 
FROM Employees e
JOIN Employees m
ON m.employee_id = e.manager_id
WHERE YEAR(e.join_date) = YEAR(m.join_date);