-- SQL query to find the second highest salary in each department.


SELECT department_id , MAX(salary) AS maximum_salary
FROM (
      SELECT department_id, salary,
      RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
FROM Employee
) AS salary_ranked
WHERE rnk = 1;
      