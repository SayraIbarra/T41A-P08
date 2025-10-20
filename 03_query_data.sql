SELECT c.name, c.email, o.id as order_id, o.order_date
FROM customers c
JOIN orders o ON c.id = o.customer_id
ORDER BY c.name, o.order_date;

SELECT o.id as order_id, o.order_date, c.name as customer_name, 
       p.name as product_name, oi.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
ORDER BY o.order_date, o.id;
SELECT c.name, 
       SUM(p.price * oi.quantity) as total_spent,
       COUNT(DISTINCT o.id) as total_orders
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
GROUP BY c.id, c.name
ORDER BY total_spent DESC;
