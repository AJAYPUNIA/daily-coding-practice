-- Query to find the names of customers who placed more then one order

CREATE DATABASE gf;

USE gf;


CREATE TABLE customers(
customer_id INT,
name VARCHAR(50)
);


INSERT INTO customers
(customer_id, name)
VALUES
(1,'Alice'),
(2,'Bob'),
(3,'Charlie'),
(4,'Diana');



CREATE TABLE orders(
order_id INT,
customer_id INT,
amount INT
);


INSERT INTO orders
(order_id, customer_id, amount)
VALUES
(101,1,250),
(102,2,300),
(103,1,200),
(104,3,150),
(105,1,100);




SELECT customers.name
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING COUNT(orders.customer_id) > 1;
