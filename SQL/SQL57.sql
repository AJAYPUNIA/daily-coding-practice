--  query to return the total number of orders placed by each customer.

SELECT customers.customer_id , customers.customer_name , COUNT(orders.order_id ) AS total_orders
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id , customers.customer_id;
