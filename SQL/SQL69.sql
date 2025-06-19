-- Find the average order amount per customer.
-- Return the customer’s ID, name, and their average order amount.

-- Tables:
-- 	•	customers(customer_id, name)
-- 	•	orders(order_id, customer_id, amount)

-- SOLUTION

SELECT customers.customer_id, customers.name , AVG(orders.amount) AS average_amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name;



