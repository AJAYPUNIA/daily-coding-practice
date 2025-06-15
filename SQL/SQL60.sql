-- query to get the total number of orders placed by each customer.


SELECT customers.customer_id ,customers.name, COUNT(orders.order_id) AS total_orders
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id , customers_customer.name;