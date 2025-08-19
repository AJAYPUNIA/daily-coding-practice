-- employees Earning the Highest Salary in Each Department

-- solution

SELECT * 
FROM Employee e
WHERE salary = (SELECT MAX(salary)
				FROM Employee
                WHERE department_id = e.department_id
);
