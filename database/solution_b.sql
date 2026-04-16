-- B. JOIN
--1
SELECT o.order_id, u.user_name, o.created_at
FROM orders o JOIN users u ON o.user_id = u.user_id;
--2
SELECT COUNT(*) AS total_orders FROM orders;
--3
SELECT o.order_id, p.product_name
FROM order_details od
JOIN orders o ON od.order_id = o.order_id
JOIN products p ON od.product_id = p.product_id;
--4
SELECT u.user_name, o.order_id, p.product_name, p.product_price
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id;
--5
SELECT o.order_id, SUM(p.product_price) AS total_price
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY o.order_id;
--6
SELECT * FROM products
WHERE product_name LIKE '%Samsung%' OR product_name LIKE '%Apple%';
--7
SELECT o.order_id, u.user_name, p.product_name, p.product_price
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id;
--8
SELECT o.order_id, SUM(p.product_price) AS total_price
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY o.order_id
ORDER BY total_price DESC
LIMIT 1;
--9
SELECT DISTINCT o.order_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name LIKE '%iPhone%';
--10
SELECT DISTINCT o.order_id
FROM orders o
JOIN order_details od ON o.order_id = od.order_id;