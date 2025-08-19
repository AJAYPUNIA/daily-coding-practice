-- query to find the names of employees who earn more than their managers.

-- solution

SELECT e.name AS employee
FROM employee AS e
JOIN employee AS m
ON e.managerID = m.ID
WHERE e.salary > m.salary;
