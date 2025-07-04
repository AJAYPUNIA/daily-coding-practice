-- Find the department_id and the second highest average salary among all departments.

-- solution


SELECT department_id , AVG(salary) AS average_salary
FROM Employee 
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1 OFFSET 1;

