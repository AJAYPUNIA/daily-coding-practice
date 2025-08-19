-- Write a SQL query to find the second highest salary in each department.

-- Return: department_id, employee_id, name, salary


-- solution

SELECT *
FROM(
    SELECT *,
    DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM Employees
) employees_rank
WHERE rnk = 2;