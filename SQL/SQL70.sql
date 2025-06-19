-- Find customers who have placed more than 3 orders.
-- Return their customer_id, name, and total_orders.
--  Tables:
-- 	•	customers(customer_id, name)
-- 	•	orders(order_id, customer_id)



-- Solution

SELECT customers.customer_id , customers.name, COUNT(orders.order_id) AS total_orders
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id , customers.name
HAVING COUNT(orders.order_id) > 3;