-- query to retrieve the total number of orders placed by each customer.


-- SOLUTION

SELECT customers.customer_id , COUNT(orders.order_id)  AS total_orders
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id;