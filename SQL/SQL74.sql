-- SQL query to return the name of the department with the highest average salary.

-- solution


SELECT Department.department_name , AVG(Employee.salary) AS average_salary
FROM Department
INNER JOIN Employee
ON Department.id = Employee.department_id
GROUP BY Department.department_name 
ORDER BY average_salary DESC
LIMIT 1;

