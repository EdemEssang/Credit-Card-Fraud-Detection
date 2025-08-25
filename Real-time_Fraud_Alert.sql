-- Real-time fraud alerts
SELECT 
    fa.id,
    fa.transaction_id,
    fa.suspicious,
    fa.alert_time,
    m.merchant_name,
    m.merchant_location
FROM fraud_alerts fa
JOIN creditcard c ON fa.transaction_id = c.transaction_id
JOIN merchants m ON c.merchant_id = m.id
ORDER BY fa.alert_time DESC
LIMIT 50;