/* 1. Payment Status Overview */
SELECT 
    payment_status,
    COUNT(*) AS transaction_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM payments)), 2) AS percentage,
    ROUND(SUM(payment_amount), 2) AS total_amount
FROM payments
GROUP BY payment_status
ORDER BY transaction_count DESC;

/* 2. Payment Method Analysis */
SELECT 
    payment_method,
    COUNT(*) AS transaction_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM payments)), 2) AS percentage,
    ROUND(SUM(payment_amount), 2) AS total_amount,
    ROUND(AVG(payment_amount), 2) AS avg_transaction_value
FROM payments
GROUP BY payment_method
ORDER BY transaction_count DESC;

/* 3. Payment Success Rate by Method */
SELECT 
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END) AS successful_transactions,
    ROUND((SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS success_rate,
    ROUND(SUM(CASE WHEN payment_status = 'completed' THEN payment_amount ELSE 0 END), 2) AS successful_amount
FROM payments
GROUP BY payment_method
ORDER BY success_rate DESC;

/* 4. Monthly Payment Success Trend */
SELECT 
    DATE_FORMAT(payment_date, '%Y-%M') AS month,
    COUNT(*) AS total_payments,
    SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END) AS successful_payments,
    ROUND((SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS success_rate
FROM payments
GROUP BY month
ORDER BY month;