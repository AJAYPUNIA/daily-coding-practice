-- Question 2:
-- Write a SQL query to find the top 2 customers who have spent the most money in each year.

-- Tables:
-- 	•	Customers(customer_id, name)
-- 	•	Orders(order_id, customer_id, order_date, total_amount)


-- solution 

WITH yearly AS (
	SELECT 
    c.customer_id,
    c.name,
    YEAR(o.order_date) AS year,
    SUM(o.total_amount) AS total_spending
    FROM Customers c
    INNER JOIN Orders o On c.customer_id = o.customer_id
    GROUP BY c.customer_id , c.name , YEAR(o.order_date)
),
ranked AS  (
	SELECT
    customer_id,
    name ,
    year,
    total_spending,
    DENSE_RANK() OVER (PARTITION BY year ORDER BY total_spending DESC ) AS rnk
    FROM yearly 
)
SELECT customer_id , name , year , total_spending
FROM ranked 
WHERE rnk <=2
ORDER BY year, rnk , total_spending DESC;