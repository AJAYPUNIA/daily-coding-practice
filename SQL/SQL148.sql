-- Write a SQL query to find the employees who earn more than their manager.

-- Return: employee_id, name


-- solution

SELECT employee_id 
FROM Employees e
JOIN Employees m ON e.manager_id  = m.employee_id 
WHERE e.salary > m.salary;