-- SQL query to find the second highest total spending customer 
-- based on the total amount 
-- from the orders table.

-- SOLUTION

SELECT customers.customer_id, customers.name , SUM(orders.amount) AS total_spent
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id , customers.name
ORDER BY total_spent DESC
LIMIT 1 OFFSET 1;