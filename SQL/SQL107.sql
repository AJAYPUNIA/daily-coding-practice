-- a SQL query to find the second highest salary from the Employee table.

-- employee_id | name     | salary
-- ------------|----------|--------
-- 1           | Alice    | 70000
-- 2           | Bob      | 80000
-- 3           | Charlie  | 70000
-- 4           | Diana    | 90000


-- solution

SELECT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;