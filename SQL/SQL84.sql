-- Question 2: Highest Earning Employee in Each Department

-- Write an SQL query to find the name of the employee with the highest salary in each department.

-- Tables:
-- 	•	Employee(id, name, salary, department_id)
-- 	•	Department(id, department_name)

-- Return:
-- 	•	department_name
-- 	•	employee_name
-- 	•	salary


-- solution
SELECT Department.department_name , Employee.name , Employee.salary
FROM Department
INNER JOIN Employee
On Department.id = Employee.department_id
WHERE (Employee.department_id , Employee.salary) IN (
       SELECT department_id , MAX(salary)
       FROM Employee
       GROUP BY department_id);
