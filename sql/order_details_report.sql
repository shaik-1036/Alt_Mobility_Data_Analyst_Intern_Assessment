/* Comprehensive Order Details Report */

SELECT 
    o.order_id,
    o.customer_id,
    DATE_FORMAT(o.order_date, '%Y-%M-%D') AS Order_date,
    o.order_amount,
    o.order_status,
    p.payment_id,
    DATE_FORMAT(p.payment_date, '%Y-%M-%D') AS Payment_date,
    p.payment_amount,
    p.payment_method,
    p.payment_status,
    DATEDIFF(Order_date, Payment_date) AS days_to_payment,
    CASE 
        WHEN o.order_status = 'delivered' AND p.payment_status = 'completed' THEN 'Complete'
        WHEN o.order_status = 'delivered' AND (p.payment_status != 'completed' OR p.payment_status IS NULL) THEN 'Delivered but Payment Issue'
        WHEN o.order_status != 'delivered' AND p.payment_status = 'completed' THEN 'Paid but Not Delivered'
        ELSE 'In Process'
    END AS order_summary
FROM customer_orders o
LEFT JOIN payments p ON o.order_id = p.order_id
ORDER BY STR_TO_DATE(o.order_date, '%d-%m-%Y') DESC;

/* Order Summary Metrics */
SELECT 
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT o.customer_id) AS unique_customers,
    ROUND(AVG(o.order_amount), 2) AS avg_order_value,
    ROUND(SUM(o.order_amount), 2) AS total_order_value,
    SUM(CASE WHEN o.order_status = 'delivered' THEN 1 ELSE 0 END) AS delivered_orders,
    ROUND((SUM(CASE WHEN o.order_status = 'delivered' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS delivery_rate,
    SUM(CASE WHEN p.payment_status = 'completed' THEN 1 ELSE 0 END) AS completed_payments,
    ROUND((SUM(CASE WHEN p.payment_status = 'completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS payment_completion_rate,
    ROUND(AVG(CASE WHEN p.payment_date IS NOT NULL AND o.order_date IS NOT NULL 
                 THEN DATEDIFF(o.order_date,p.payment_date)
                 ELSE NULL END), 1) AS avg_days_to_payment
FROM customer_orders o
LEFT JOIN payments p ON o.order_id = p.order_id;