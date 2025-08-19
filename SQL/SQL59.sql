-- query to find the names of customers who have never placed an order.


-- SOLUTION 

SELECT customers.name 
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;
