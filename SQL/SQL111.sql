-- query to return the name of employees who earn more than their manager.



-- solution

SELECT name 
FROM Employee e
JOIN Emplopyee m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;