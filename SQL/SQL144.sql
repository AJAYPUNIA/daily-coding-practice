--  a SQL query to find the customer who has spent the most total money.

-- Return: customer_id, name, total_spent


-- solution

SELECT Customers.customer_id , Customers.name , SUM(Orders.amount) AS total_amount
FROM Customers 
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id 
GROUP BY Customers.customer_id , Customers.name
ORDER BY total_amount DESC
LIMIT 1;