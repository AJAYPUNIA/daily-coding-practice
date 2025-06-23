-- query to return the second highest distinct salary.



-- solution


SELECT DISTINCT salary 
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
