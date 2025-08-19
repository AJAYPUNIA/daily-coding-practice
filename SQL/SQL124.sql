-- Write a query to find the department(s) that have the highest total salary 
-- (i.e., sum of all employee salaries in that department).


SELECT department_id , SUM(salary) as total_salary
FROM Employee
GROUP BY department_id 
ORDER BY total_salary DESC
LIMIT 1;