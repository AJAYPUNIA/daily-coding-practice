--  query to find the highest paid employee(s) in each department.

-- Employee
-- ---------
-- employee_id | name  | salary | department_id
-- ------------|-------|--------|---------------
-- 1           | Alice | 90000  | 101
-- 2           | Bob   | 75000  | 101
-- 3           | Carol | 85000  | 102
-- 4           | Dave  | 95000  | 102
-- 5           | Erin  | 70000  | 103

-- solution

SELECT name , department_id , salary
FROM Employee e
WHERE salary = (SELECT MAX(salary)
                FROM Employee
                WHERE department_id = e.department_id
);
