CREATE TABLE fraud_alerts (
    id SERIAL PRIMARY KEY,
    suspicious TEXT,
    transaction_id INT REFERENCES creditcard(transaction_id),
    alert_time TIMESTAMP
);

SELECT *
FROM fraud_alerts;