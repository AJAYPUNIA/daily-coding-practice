-- SQL query to return the names of the top 2 products that were ordered 
-- the most in total quantity.


-- solution


SELECT Products.product_id , Products.product_name , SUM(Orders.quantity) AS total_quantity
FROM Products
INNER JOIN Orders
On Products.product_id = Orders.product_id
GROUP BY Products.product_name  , Products.product_id
ORDER BY total_quantity DESC
LIMIT 2;
