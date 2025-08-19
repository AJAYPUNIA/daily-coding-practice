-- SQL query to find the second highest salary from the Employee table.


-- solution


SELECT DISTINCT salary
FROM employee 
ORDER BY salary DESC
LIMIT 1 OFFSET 1;