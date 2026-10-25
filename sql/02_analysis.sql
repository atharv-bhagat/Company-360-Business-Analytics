USE company360;

SELECT COUNT(DISTINCT o.order_id) AS delivered_orders, COUNT(DISTINCT o.customer_id) AS active_customers,
 ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS gross_delivered_sales,
 ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100))/COUNT(DISTINCT o.order_id),2) AS avg_order_value
FROM orders o JOIN order_items oi ON o.order_id=oi.order_id WHERE o.order_status='Delivered';


SELECT DATE_FORMAT(o.order_date,'%Y-%m') AS sales_month, COUNT(DISTINCT o.order_id) AS orders,
 ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS sales
FROM orders o JOIN order_items oi ON o.order_id=oi.order_id WHERE o.order_status='Delivered'
GROUP BY DATE_FORMAT(o.order_date,'%Y-%m') ORDER BY sales_month;


SELECT p.category, ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS sales
FROM orders o JOIN order_items oi ON o.order_id=oi.order_id JOIN products p ON oi.product_id=p.product_id
WHERE o.order_status='Delivered' GROUP BY p.category ORDER BY sales DESC;


SELECT p.product_name, SUM(oi.quantity) AS units_sold, ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS sales
FROM orders o JOIN order_items oi ON o.order_id=oi.order_id JOIN products p ON oi.product_id=p.product_id
WHERE o.order_status='Delivered' GROUP BY p.product_id,p.product_name ORDER BY sales DESC LIMIT 10;


SELECT c.segment, COUNT(DISTINCT o.order_id) AS orders, ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS sales
FROM customers c JOIN orders o ON c.customer_id=o.customer_id JOIN order_items oi ON o.order_id=oi.order_id
WHERE o.order_status='Delivered' GROUP BY c.segment ORDER BY sales DESC;


SELECT c.city, ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS sales
FROM customers c JOIN orders o ON c.customer_id=o.customer_id JOIN order_items oi ON o.order_id=oi.order_id
WHERE o.order_status='Delivered' GROUP BY c.city ORDER BY sales DESC;


SELECT COUNT(DISTINCT r.order_id) AS returned_orders, COUNT(DISTINCT o.order_id) AS delivered_orders,
 ROUND(100*COUNT(DISTINCT r.order_id)/NULLIF(COUNT(DISTINCT o.order_id),0),2) AS return_rate_pct
FROM orders o LEFT JOIN returns r ON o.order_id=r.order_id WHERE o.order_status='Delivered';


SELECT p.payment_method, COUNT(*) AS transactions, ROUND(SUM(p.amount),2) AS amount
FROM payments p JOIN orders o ON p.order_id=o.order_id WHERE o.order_status='Delivered' AND p.payment_status='Paid'
GROUP BY p.payment_method ORDER BY amount DESC;


SELECT e.region, ROUND(SUM(oi.quantity*oi.unit_price*(1-oi.discount_pct/100)),2) AS sales
FROM employees e JOIN orders o ON e.employee_id=o.employee_id JOIN order_items oi ON o.order_id=oi.order_id
WHERE o.order_status='Delivered' GROUP BY e.region ORDER BY sales DESC;


SELECT 'orders_without_items' AS check_name, COUNT(*) AS issues FROM orders o LEFT JOIN order_items i ON o.order_id=i.order_id WHERE i.order_id IS NULL
UNION ALL SELECT 'payments_without_orders',COUNT(*) FROM payments p LEFT JOIN orders o ON p.order_id=o.order_id WHERE o.order_id IS NULL;
