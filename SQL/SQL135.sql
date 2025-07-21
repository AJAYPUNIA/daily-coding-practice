-- the department with the second highest average salary.


WITH avg_salaries AS (
    SELECT department_id, AVG(salary) AS average_salary
    FROM Employee
    GROUP BY department_id
),
ranked_departments AS (
    SELECT department_id, average_salary,
           RANK() OVER (ORDER BY average_salary DESC) AS rnk
    FROM avg_salaries
)
SELECT department_id, average_salary
FROM ranked_departments
WHERE rnk = 2;