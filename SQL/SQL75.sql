-- query to return the name and total order amount of the customer who spent the most money.


-- solution


SELECT customers.name , SUM(orders.order_amount) as total_amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_amount DESC
LIMIT 1;