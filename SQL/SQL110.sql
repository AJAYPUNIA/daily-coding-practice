-- query to return the name(s) of the product(s) with the second highest total quantity sold.-- 


-- solution


SELECT Products.product_name , Products.product_id , SUM(Orders.quantity) AS total_quantity
FROM Products
INNER JOIN Orders
ON Products.product_id = Orders.product_id
GROUP BY Products.product_name , Products.product_id
ORDER BY total_quantity DESC
LIMIT 1 OFFSET 1;