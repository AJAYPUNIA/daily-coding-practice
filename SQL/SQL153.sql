-- Write a SQL query to find the department name with the highest average salary.

-- Return: department_name, average_salary


-- solution

SELECT d.department_name , AVG(e.salary) AS average_salary
FROM Departments d
JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY average_salary DESC
LIMIT 1;