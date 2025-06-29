Find the names of employees who earn more than 
the average salary in their department.

Assume the table structure:

Employee
employee_id | name   | salary | department_id
------------|--------|--------|---------------
1           | Alice  | 90000  | 10
2           | Bob    | 60000  | 10
3           | Carol  | 75000  | 20
4           | David  | 80000  | 20


-- solution

SELECT name 
FROM Employee e
WHERE salary > (
                 SELECT AVG(salary)
                 FROM Employee
                 WHERE department_id = e.department_id
);
