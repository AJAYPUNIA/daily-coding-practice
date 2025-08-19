Find the second highest salary from the Employee table without using LIMIT or OFFSET.

Table: Employee


SELECT salary 
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);