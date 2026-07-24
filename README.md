
# Loan Default Risk Analysis
### Reducing Portfolio Losses Through Risk-Based Underwriting
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/3eafce30b39e6ed725746830bc1d941dd7e0671b/dashboard/overview.png)


# Project Overview
This project analyzes a $32.58B consumer loan portfolio from the perspective of a Chief Risk Officer (CRO) to identify the borrower characteristics and loan features that contribute most to loan defaults.This project identifies the high-risk borrower segments, loan features, and financial ratios (DTI and LTI) that should receive additional review before loan approval.

# Business Problem
The portfolio is currently generating a severe -15.33% net profit margin, translating to a $569.77M net financial loss driven heavily by $4.29B in defaulted loans. The portfolio's 11.61% default rate has led to significant financial losses. 

# Buisness Question Answered
1. Why is our portfolio losing money despite steady interest income?
2. Where is our systemic risk concentrated?
3. Which customer segments represent our highest default risk?
4. At what leverage point do borrowers break?
5. Are high interest rates creating a death spiral for borrowers?

# Tools & Technologies
**Power BI**: 3 page Interactive Dashboard used field parramete, DAX, Power Query
**Python**: Data cleaning, Structure Verification, univarant/bivarant analysis
**Dataset**
* **Source:** Kaggle

# Dashboard
**Overview**
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/3eafce30b39e6ed725746830bc1d941dd7e0671b/dashboard/overview.png)

Demonstrates a -$569.77M net loss (-15.33% profit margin) caused by a 13.15% financial default rate and extreme risk concentration.

**Demographics**
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/cd5a85c6dd2c15a59661afe78d78ecd7542fbf12/dashboard/demographics.png)

Reveals that unemployed borrowers (29.18% default rate) and younger adults aged 18–24 (21.03% default rate) represent the primary loss drivers.

**Loan Analysis**
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/cd5a85c6dd2c15a59661afe78d78ecd7542fbf12/dashboard/loananalysis.png)

Proves that defaults peak at 17.82% for high-interest loans (21–25%) and spike when borrower Loan-to-Income ratios exceed 300%.


# Key Insights
Severe Capital Leakage: $4.29B in defaults have completely erased the portfolio's $3.72B expected revenue, yielding an alarming portfolio risk concentration HHI score of 3.23K**.
Low-Income Vulnerability: Borrowers earning under $30K carry the highest default concentration at 21.96% (nearly double the next closest income tier).
Leverage Tipping Point: While the overall portfolio average LTI sits at 218%, defaulting accounts experience a catastrophic structural spike to 325%.
 Structural Hotspots: Risk concentrates heavily within Business loans (12.33%), the 21–25% interest bracket (17.82%), and the 37–48 month maturity band (which carries the peak average interest rate of 13.51%).
  Compounded Demographic Risk: Default rates peak aggressively among the 18–24 age bracket (21.03%) and unemployed borrowers (29.18%)

# Project Structure 
loan-default-risk-analysis/
│
├── PowerBI/
│   ├── loan_default_dashboard.pbix  
├── Python/
│   ├── loanDefaultPrediction.ipynb  
│   
├── dashboard/
│   ├── dashboard_overview.png 
│   ├── demographics.png       
│   └── loan_analysis.png      
│                 
└── README.md               

