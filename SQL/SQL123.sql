-- query to find employees who earn more than the average salary of their department


-- solution.


SELECT name , salary , department_id
FROM Employee e
WHERE salary > (SELECT AVG(salary)
                FROM Employee
                WHERE department_id = e.department_id);