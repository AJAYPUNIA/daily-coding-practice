--  a SQL query to find the top 2 customers who spent the most money 
--  in June 2025, along with their 
--  total spending for that month.

-- solution


SELECT c.customer_id , c.name , SUM(o.total_amount) AS sum_of_amount
FROM Customers c
INNER JOIN Orders o On c.customer_id = o.customer_id
WHERE o.order_date >= '2025-06-01'   -- row filter (pre-group)
  AND o.order_date <  '2025-07-01'
GROUP BY c.customer_id , c.name
ORDER BY sum_of_amount DESC
LIMIT 2;
