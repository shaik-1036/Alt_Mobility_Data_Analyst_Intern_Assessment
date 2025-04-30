/* 1. Customer Order Frequency */
SELECT 
    orders_placed,
    COUNT(*) AS customer_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(DISTINCT customer_id) FROM customer_orders)), 2) AS percentage
FROM (
    SELECT 
        customer_id, 
        COUNT(*) AS orders_placed
    FROM customer_orders
    GROUP BY customer_id
) AS customer_orders_count
GROUP BY orders_placed
ORDER BY orders_placed;

/* 2. Customer Segmentation */
SELECT 
    CASE 
        WHEN order_count = 1 THEN 'One-time Customers'
        WHEN order_count BETWEEN 2 AND 3 THEN 'Returning Customers'
        WHEN order_count > 3 THEN 'Loyal Customers'
    END AS customer_segment,
    COUNT(*) AS number_of_customers,
    ROUND(AVG(total_spent), 2) AS avg_customer_value
FROM (
    SELECT 
        customer_id, 
        COUNT(*) AS order_count,
        SUM(order_amount) AS total_spent
    FROM customer_orders
    GROUP BY customer_id
) AS customer_summary
GROUP BY customer_segment
ORDER BY avg_customer_value DESC;

/* 3. Customer Purchase Timeline */
SELECT
    DATE_FORMAT(order_date, '%Y-%M') AS month,
    COUNT(DISTINCT customer_id) AS unique_customers,
    COUNT(*) AS total_orders,
    ROUND(COUNT(*) / COUNT(DISTINCT customer_id), 2) AS orders_per_customer
FROM customer_orders
GROUP BY month
ORDER BY month;


/* 4. Top Customers by Spend */
SELECT 
    customer_id,
    COUNT(*) AS order_count,
    ROUND(SUM(order_amount), 2) AS total_spent,
    ROUND(AVG(order_amount), 2) AS avg_order_value
FROM customer_orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;