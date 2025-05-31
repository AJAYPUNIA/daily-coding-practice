-- return the product name with the highest total quantity sold

CREATE DATABASE rf;

USE rf;

CREATE TABLE products(
product_id INT,
product_name VARCHAR(50)
);


INSERT INTO products(product_id,product_name)
VALUES
(1,"iPhone"),
(2,"Galaxy"),
(3,"Pixel");

CREATE TABLE orders(
order_id INT,
product_id INT,
quantity INT
);




INSERT INTO orders(order_id, product_id,quantity)
VALUES
(101,1,2),
(102,1,1),
(103,2,3);

SELECT * FROM orders;


SELECT products.product_name , SUM(quantity) AS total_quantity
FROM products
INNER JOIN orders
ON products.product_id = orders.product_id
GROUP BY products.product_name
ORDER BY total_quantity DESC
LIMIT 1;

