--  Write a SQL query to find the employee(s) who worked on the most projects in each department.


-- solution


WITH projects_count AS(
	SELECT
		e.employee_id,
        e.name,
        e.department_id,
        COUNT( DISTINCT p.project_id) AS number_of_projects
	FROM Employees e
    JOIN Projects p ON e.employee_id = p.employee_id
    GROUP BY e.employee_id , e.name , e.department_id
)
SELECT employee_id , name , department_id , number_of_projects
FROM(
	SELECT employee_id , name , department_id , number_of_projects,
    RANK() OVER (PARTITION BY department_id  ORDER BY number_of_projects  DESC) AS rnk
FROM projects_count
) counts
WHERE rnk =1
ORDER BY department_id , name;
