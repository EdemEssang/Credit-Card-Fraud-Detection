-- Monthly fraud trend chart
SELECT 
    DATE_TRUNC('month', fa.alert_time) AS month,
    COUNT(fa.id) AS fraud_count
FROM fraud_alerts fa
GROUP BY DATE_TRUNC('month', fa.alert_time)
ORDER BY month;