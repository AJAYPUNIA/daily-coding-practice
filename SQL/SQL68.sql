--  query to return the product(s) that have never been ordered.


-- SOLUTION 

SELECT prodcuts.product_id , products.product_name 
FROM products
LEFT JOIN orders
ON products.product_id = orders.product_id
WHERE orders.product_id IS NULL;