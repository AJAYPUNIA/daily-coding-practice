-- calculating total sales per product from the two table by using INNER JOINS


CREATE DATABASE tr;

USE we;

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
order_date DATE
);


INSERT INTO orders(order_id, product_id,order_date)
VALUES
(101,1,'2024-01-01'),
(102,1,'2024-01-03'),
(103,2,'2024-01-04');


SELECT products.product_name , SUM(orders.quantity) AS total_quantity
FROM products 
INNER JOIN orders
ON products.product_id = orders.product_id
GROUP BY products.product_name
