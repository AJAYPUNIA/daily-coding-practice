-- query to find the product_name and total quantity sold for each product.
-- Order by total quantity in descending order.


SELECT products.product_name, SUM(sales.quantity) AS total_quantity
FROM products
INNER JOIN sales
ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_quantity DESC;