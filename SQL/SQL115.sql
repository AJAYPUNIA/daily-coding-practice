-- Write a query to find the department(s) with the maximum number of employees, and show:
-- 	•	department_id
-- 	•	total number of employees in that department
-- 	•	average salary in that department



-- solution


SELECT department_id , COUNT(department_id) AS number_of_employees , AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
ORDER BY number_of_employees DESC
LIMIT 1;

