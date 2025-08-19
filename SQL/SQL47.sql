-- query to find the names of customers who have not placed any orders.


SELECT customers.customer_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;