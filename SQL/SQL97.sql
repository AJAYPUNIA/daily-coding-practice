-- query to find the second highest unique salary in the table.


-- solution


SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;