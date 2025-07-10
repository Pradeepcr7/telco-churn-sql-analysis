 📄 Customer Churn SQL Analysis – Business Report

This report summarizes the key findings from analyzing the Telco customer churn dataset using SQL.

---

 🔍 Objective

To identify patterns and drivers of customer churn using SQL queries on a telecom dataset. The goal is to help the business improve retention and reduce churn.

---

 🗃️ Dataset Summary

- **Source:** [Kaggle – Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Total Records:** 7,043
- **Target Column:** `Churn` (`Yes` = customer left, `No` = customer stayed)



 📊 Key Findings

 1. Overall Churn Rate
- **Churned Customers:** ~26.5% of the total customer base

 2. Contract Type
- **Month-to-Month Contracts:** 42% churn rate  
- **Two-Year Contracts:** Only 3% churn  
✅ *Longer contracts lead to stronger retention*

 3. Payment Method
- **Electronic Check Users:** Highest churn (45%)  
- **Auto-Pay Methods:** Lowest churn (15-19%)  
✅ *Promoting auto-payment could reduce churn*

4. Senior Citizens
- **Senior Customers:** 41% churn  
- **Non-Senior Customers:** 24% churn  
✅ *Older customers may need better onboarding or support*

 5. Monthly Charges
- **Churned Customers Avg:** $74  
- **Non-Churned Avg:** $61  
✅ *Higher-paying customers churn more, possibly due to dissatisfaction*

 6. Tenure
- **Churned Customers Avg Tenure:** 18 months  
✅ *Most customers leave early — consider onboarding strategies*

---

💡 Recommendations

- Offer **incentives to switch from month-to-month to yearly plans**
- Promote **automatic payment methods**
- Target **senior customers with tailored support**
- Provide **better onboarding for new users to improve early retention**



## ✅ Conclusion

This project highlights how SQL can be used for real-world business insights. By querying, grouping, and calculating churn metrics, we uncover actionable trends that help reduce customer loss and increase loyalty.


