-- Assume a table called Employee with columns:
-- 	•	employee_id
-- 	•	name
-- 	•	salary
-- 	•	department_id

-- Write a SQL query to return the names of employees who earn more than the average salary 
-- of their own department.

-- solution


SELECT name
FROM Employee e
WHERE salary > ( 
                SELECT AVG(salary)
                FROM Employee 
                WHERE Department_id = e.Department_id
);
      