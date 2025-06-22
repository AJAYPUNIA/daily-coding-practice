-- Write a query to find the second highest salary from the Employee table.
-- If no second highest exists, return null.
-- Table - Employee
-- id | name   | salary
-- ---|--------|-------
-- 1  | Alice  | 100000
-- 2  | Bob    | 80000
-- 3  | Carol  | 120000
-- 4  | Dave   | 100000

-- Solution


SELECT salary
FROM Employee
GROUP BY salary
ORDER BY salary DESC
LIMIT 1 OFFSET 1;