-- 📊 CUSTOMER CHURN ANALYSIS USING SQL
-- Dataset: Telco Customer Churn (Kaggle)
-- Database: telco_churn
-- Table: customers

-- 1. Total number of customers who churned vs. stayed
SELECT Churn, COUNT(*) AS total_customers
FROM customers
GROUP BY Churn;

-- 2. Churn rate by contract type
SELECT Contract,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

-- 3. Churn rate by senior citizen status
SELECT 
    CASE 
        WHEN SeniorCitizen = 1 THEN 'Senior'
        ELSE 'Not Senior'
    END AS senior_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY SeniorCitizen;

-- 4. Churn rate by gender
SELECT gender,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY gender;

-- 5. Churn by payment method
SELECT PaymentMethod,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;

-- 6. Churn comparison: Monthly Charges and Total Charges
SELECT Churn,
       ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
       ROUND(AVG(TotalCharges), 2) AS avg_total_charge
FROM customers
GROUP BY Churn;

-- 7. Services most used by churned customers
SELECT InternetService,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY InternetService;

-- 8. Tenure analysis: Average tenure of churned vs non-churned customers
SELECT Churn,
       ROUND(AVG(tenure), 2) AS avg_tenure
FROM customers
GROUP BY Churn;

-- 9. Dependents vs churn
SELECT Dependents,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY Dependents;
