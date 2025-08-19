-- Find employees who earn more than the average salary of their department.
-- 	•	You are given a table Employees with the following schema:


-- solution

SELECT employee_id, name , department_id , salary
FROM Employees e
WHERE salary > (SELECT AVG(salary)
				FROM Employees
                WHERE department_id = e.department_id
);