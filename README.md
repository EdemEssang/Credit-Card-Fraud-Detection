# Credit Card Fraud Detection Project
This is a repository hosting the  Capstone Project for group 7 members in Hagital Data Engineering Course

## Task: Credit Card Fraud Detection (Finance)
#### Data Source:
● [Kaggle Credit Card Fraud Dataset](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)
##### Deliverables:
1. ETL script to load and preprocess credit card transaction data.
2. Transformation to flag anomalies based on statistical thresholds.
3. PostgreSQL schema for transactions, flagged alerts, and merchants.
4. Grafana dashboard with:
a) Real-time fraud alerts.
b) Fraud frequency by merchant/location.
c) Monthly fraud trend chart.



# CAPSTONE PROJECT FOR GROUP7 & Challenges Encountered
# Task: Credit Card Fraud Detection (Finance) 
# Duration: Two weeks (15th August 2025 – 27th August 2025)

 Challenges Encountered During Project
1. Handling Duplicates in the Dataset
   
####	Issue: Unsure whether duplicate rows with Class = 0 or Class = 1 represented legitimate or fraudulent transactions.
#### Challenge: Deciding whether to drop or keep duplicates since they might reflect real repeated purchases or fraud attempts.
####	Solution: After careful consideration we decided dropping the duplicates because it doesn't cause any bias in our analysis

________________________________________
2. Anomaly Detection Method Selection
####	Issue: Needed to implement anomaly detection for fraud.
####	Challenge: Choosing an appropriate statistical approach.
####	Solution: Applied Z-score on transaction amounts to identify abnormal transactions and flagged them as potential fraud.
________________________________________
3. Explaining the columns names 
####	Issue: The column names were represented as v1, v2, v3.....v28
####	Challenge: It was not descriptive and might be confusing.
####	Solution: Renamed the columns to reflect it purpose which is spending_ patterns.
________________________________________
4. Choosing a Transaction ID / Merchant ID
####	Issue: The original Kaggle dataset lacked a clear unique identifier for each transaction.
####	Challenge: Needed an ID field to store and reference transactions in Postgres and Merchant ID
####	Solution: Created transaction_id (auto-increment in Postgres) to serve as a unique key. And we created merchant location. 
________________________________________
5. Simulating Merchant & Location Data
####	Issue: Kaggle dataset did not include merchants or locations.
####	Challenge: Needed these fields for realistic fraud trend analysis and Grafana dashboards.
####	Solution: Simulated merchant_name, merchant_location, and later considered merchant_id for normalization.
________________________________________
6. Grafana Integration Challenges
####	Issue: Dataset was not real-time and Grafana is built for monitoring live streams.
####	Challenge: Needed a way to represent fraud frequency by merchant, location and monthly trends from a static dataset.
####	Solution: Loaded transformed Postgres tables into Grafana and simulated real-time queries by grouping transactions (fraud by merchant, fraud by month, fraud frequency).
________________________________________
7. Boolean vs Integer Class Field
####	Issue: Kaggle dataset used Class column (0 = normal, 1 = fraud).
####	Challenge: Deciding whether to keep as integers or convert to boolean.
####	Solution: Converted to BOOLEAN for readability, whereby 0 represents True and 1 represents False Transactions respectively.
________________________________________
8. Team Collaboration & Documentation
####	Issue: Team members had different technical backgrounds.
####	Challenge: Out of six(6) Team members assigned for this project, just four(4) were actively available for collaboration and brainstorming. We needed a consistent way to share reasoning, decisions, and queries.
####	Solution: We decide to stick with discord platform a professional platform, to avoid distractions from whatsapp. Discord is indeed more professional when it comes to team work. Making use of voice notes and sharing  and comparing notes. We Added inline comments in Python/SQL, structured explanations, and finally a GitHub README to document the project journey.
________________________________________
9. Files and description
####	ipynb: We created three tables in the cause of this project through ETL process which are transaction, merchants, and flaggedalert tables to help us identify and solve the challenges facing the creditcard organisation and they are represented as (for juypternote: creditcard.ipynb, merchant.ipynb, and flaggedalert.ipynb, and PostgresSQL query: creditcard.sql(transaction.csv), merchants.sql, and fraud_alert.sql)
####	Challenge: We were expected show solve these challenges ((a) Real-time fraud alerts. (b) Fraud frequency by merchant/location. (c) Monthly fraud trend chart.) and represent it on a Grafana dashborad
####	Solution: The solutions to above challenges were represented in a csv, sql, and png format for dashboard display and links to the dashborads as follows (1. https://snapshots.raintank.io/dashboard/snapshot/IuJ3fCOzFjhndXKmdMOLHmVQYXAm8C4m
The Grafana dashboard for Real-time Fraud Alert  2. https://snapshots.raintank.io/dashboard/snapshot/7W5muKmeK93e0Ba5rjEjvX09flLB4cwS
The Grafana dashboard for fraud frequency 3. https://snapshots.raintank.io/dashboard/snapshot/dnZEZJZYg0VJtHf0kklgNwLZX96DKZ9u
The Grafana Dashboard for Monthly fraud trend chart) and with these solutions the creditcard organisation can detect where the fraud is occuring and save their organisation from losing incomes. 

##### Authors:
###### 1. Dave Edward
Role:
Team Lead / Project Coordinator.
Oversee project flow, coordinate communication, ensure tasks are completed on schedule, integrate all components, liaise with tutors/mentors.
###### 2. Eyo Ephraim:
Role:
Data Acquisition & Ingestion Engineer.
Source datasets (CSV, DB), write extraction scripts, store raw data in staging, document data sources.
###### 3. Edem Ukoh:
Role:
Data Cleaning & Transformation Engineer
Handle missing values, duplicates, formatting; standardize formats; apply aggregations, joins, derived columns; write transformation scripts.
###### 4. Iiori Emmanuel:
Role:
Data Storage & Database Engineer
Design schema, create/manage database (SQL/NoSQL), optimize queries, ensure indexing and data integrity.
###### 5. Samuel Samuel Ojeka
Role:
Data Pipeline & Automation Engineer
Build ETL/ELT pipelines  automate ingestion & transformation, monitor and fix pipeline issues.
###### 6. Mawufemor Damalie
Role: 
Reporting, Visualization & Documentation Engineer.
Create dashboards/reports (Grafana/Python), prepare final documentation, presentation slides for capstone defense.

[This is a link to a detailed Activities and dates of the project:](https://docs.google.com/spreadsheets/d/1QE0w0iqAjkaY-yN7dup29UFVSLCGx19I/edit?usp=sharing&ouid=116708216449213152697&rtpof=true&sd=true)