-- SQL query finds employees who have the second highest salary in each department.



-- solution



SELECT name, department_id, salary
FROM (
    SELECT name, department_id, salary,
           DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM Employee
) AS salary_ranked
WHERE rnk = 2;