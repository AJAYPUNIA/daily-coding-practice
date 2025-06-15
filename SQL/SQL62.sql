-- query to find the top 2 customers who have spent the most money
--  (i.e., highest total order amount).


SELECT customers.customer_id , customers.name , SUM(orders.amount) AS total_amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name 
ORDER BY total_amount DESC
LIMIT 2;