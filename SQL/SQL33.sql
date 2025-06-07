#query to return the names of customers who have placed more than one order.


SELECT customers.name 
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING COUNT(orders.order_id) >1;
