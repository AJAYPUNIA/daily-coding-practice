-- Write a SQL query to find the names of employees who earn more than their manager.
-- Employee
-- id | name   | salary | managerId
-- ---|--------|--------|----------
-- 1  | Alice  | 70000  | 3
-- 2  | Bob    | 80000  | 4
-- 3  | Carol  | 60000  | NULL
-- 4  | Dave   | 90000  | NULL


-- Solution


SELECT e.name
FROM Employee AS e
JOIN Employee AS m
ON e.managerid = m.id
WHERE e.salary > m.salary;

