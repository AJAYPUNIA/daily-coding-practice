-- SQL query to find the name of the department with the highest average salary.
-- Table: Employee
-- Columns:
-- 	•	id (INT)
-- 	•	name (VARCHAR)
-- 	•	salary (INT)
-- 	•	department_id (INT)

-- Table: Department
-- Columns:
-- 	•	id (INT)
-- 	•	department_name (VARCHAR)

-- solution


SELECT Department.department_name , AVG(Employee.salary) as average_salary
FROM Department
INNER JOIN Employee
ON Department.id = Employee.department_id
GROUP BY Department.department_name
ORDER BY average_salary DESC
LIMIT 1;
