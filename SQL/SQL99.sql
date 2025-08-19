-- query to find the employee(s) who earn more than the average salary in the company. 
-- Return their employee_id, name, and salary.

-- solution


SELECT employee_id , name , salary 
FROM Employee
WHERE salary > (SELECT AVG(salary)FROM Employee);
