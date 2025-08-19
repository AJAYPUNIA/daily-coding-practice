-- Write a SQL query to find, for each employee, the month-over-month salary 
-- change (current month’s salary minus previous month’s salary), ordered by employee and pay_date.

-- You should output:

-- employee_id | name | pay_date | salary | prev_month_salary | salary_change


-- solution

WITH monthly AS(
	SELECT 
    employee_id,
    name,
    MONTH(pay_date) AS mn,
    salary,
    LAG(salary) OVER(PARTITION BY employee_id ORDER BY pay_date) AS prev_month_salary
    FROM Employee_Salaries
)
SELECT
	employee_id,
    name,
    pay_date,
    salary,
    prev_month_salary,
    (salary - prev_month_salary) AS salary_change
FROM monthly
ORDER BY employee_id , pay_date;

