-- Write a query to find the second highest salary in each department.
-- Return: department_id, second_highest_salary.


-- solution


SELECT department_id , MAX(salary) AS second_higest_salary
FROM(
	 SELECT department_id , salary,
            DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC)AS rnk
	FROM Employee
) ranked_salaries
WHERE rnk = 2;