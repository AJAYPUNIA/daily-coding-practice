-- Write a SQL query to get the top 2 highest-paid employees from each department.
-- Return: department_id, employee_id, name, salary


-- solution


SELECT employee_id , name, department_id , salary
FROM (SELECT employee_id , name , department_id ,salary,
      RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
) salary_ranking
WHERE rnk <= 2;
