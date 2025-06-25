--  SQL query to find the top 3 products based on total quantity ordered. 
--  Output should be: product_name and total_quantity, sorted by quantity in descending order.


-- solution


SELECT Products.product_name , SUM(Orders.quantity) AS total_quantity
FROM Products
INNER JOIN Orders
ON Products.product_id = Orders.product_id
GROUP BY Products.product_name
ORDER BY total_quantity DESC
LIMIT 3;
