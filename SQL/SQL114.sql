-- employees who earn more than the average salary in their department.



SELECT *
FROM Employee e 
HAVING salary > (SELECT AVG(salary)
                 FROM Employee
                 WHERE department_id  = e.department_id
);
                 