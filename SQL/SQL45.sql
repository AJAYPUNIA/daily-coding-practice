-- SQL query to get only the names of customers who placed more than one order.


SELECT customers.name 
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING COUNT(orders.customer_id) >1;