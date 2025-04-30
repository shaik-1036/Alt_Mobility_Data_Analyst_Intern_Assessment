/* 1. Order Status Distribution */
SELECT 
    order_status, 
    COUNT(*) AS order_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_orders)), 2) AS percentage
FROM customer_orders
GROUP BY order_status
ORDER BY order_count DESC;

/* 2. Monthly Sales Trend */


SELECT 
    date_format(order_date, '%Y-%M') AS month,
    COUNT(*) AS total_orders,
    SUM(order_amount) AS total_revenue,
    ROUND(AVG(order_amount), 2) AS avg_order_value
FROM customer_orders
GROUP BY month
ORDER BY month;

/* 3. Sales by Order Status */
SELECT 
    order_status,
    COUNT(*) AS order_count,
    ROUND(SUM(order_amount), 2) AS total_revenue,
    ROUND(AVG(order_amount), 2) AS avg_order_value
FROM customer_orders
GROUP BY order_status
ORDER BY total_revenue DESC;

/* 4. Year-over-Year Growth (if data spans multiple years) */
SELECT
    DATE_FORMAT(order_date, '%Y') AS Year,
    COUNT(*) AS total_orders,
    SUM(order_amount) AS total_revenue
FROM customer_orders
GROUP BY year
ORDER BY year;