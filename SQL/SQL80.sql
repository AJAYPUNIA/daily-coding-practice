-- Find the second highest salary from the Employee table.

SELECT DISTINCT(salary) AS salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;