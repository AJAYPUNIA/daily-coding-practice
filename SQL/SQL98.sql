-- query to return the product with the highest total revenue (quantity * price_per_unit).


-- solution

SELECT Products.product_id,  Products.product_name , SUM(Orders.quantity * Orders.price_per_unit) AS total_revenue
FROM Products
INNER JOIN Orders
ON Products.product_id = Orders.product_id
GROUP BY Products.product_id, Products.product_name
ORDER BY total_revenue DESC
LIMIT 1;
