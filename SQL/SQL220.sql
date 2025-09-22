-- Table: Employee

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | department  | varchar |
-- | managerId   | int     |
-- +-------------+---------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table indicates the name of an employee, their department, and the id of their manager.
-- If managerId is null, then the employee does not have a manager.
-- No employee will be the manager of themself.
--  

-- Write a solution to find managers with at least five direct reports.

-- Return the result table in any order.


-- solution
SELECT m.name AS name
FROM Employee e
JOIN Employee m 
ON e.managerId = m.id
GROUP BY m.id , m.name
HAVING COUNT(*) >= 5;