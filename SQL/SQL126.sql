-- SQL query to find the second highest salary in each department.

-- solution


SELECT department_id, MAX(salary) AS maximum_salary
FROM Employee
GROUP BY department_id
ORDER BY maximum_salary DESC
LIMIT 1 OFFSET 1;