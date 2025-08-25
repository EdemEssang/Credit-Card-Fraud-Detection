-- Fraud frequency by merchant/location
SELECT 
    m.merchant_name,
    m.merchant_location,
    COUNT(fa.id) AS fraud_count
FROM fraud_alerts fa
JOIN creditcard c ON fa.transaction_id = c.transaction_id
JOIN merchants m ON c.merchant_id = m.id
GROUP BY m.merchant_name, m.merchant_location
ORDER BY fraud_count DESC;