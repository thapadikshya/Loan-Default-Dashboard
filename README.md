
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

# Tools & Technologies**
**Power BI**: 3 page Interactive Dashboard used field parramete, DAX, Power Query
**Python**: Data cleaning, Structure Verification, univarant/bivarant analysis
**Dataset**
* **Source:** Kaggle

# Dashboard
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/3eafce30b39e6ed725746830bc1d941dd7e0671b/dashboard/overview.png)
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/cd5a85c6dd2c15a59661afe78d78ecd7542fbf12/dashboard/demographics.png)
![image alt](https://github.com/thapadikshya/Loan-Default-Dashboard/blob/cd5a85c6dd2c15a59661afe78d78ecd7542fbf12/dashboard/loananalysis.png)



 **Data Preparation & Engineering**
The raw data was programmatically cleaned using Python and structured into a highly efficient relational model:
* **Custom Risk Tiering (Binning):** Continuous variables (DTI, LTI, Income, Interest Rates) were discretized into logical categorical intervals to establish clean, distribution-based underwriting rules.
* **Dynamic UX Highlight Measure:** Engineered an DAX measure using `MAXX` and `ALLSELECTED` to dynamically color-code the peak-risk category in coral red across all visuals, adapting instantly to active dashboard slicers.

**Dashboard Architecture**
* **Portfolio Overview:** Executive KPIs tracking Portfolio Value, Expected Revenue, Gross Default Losses, Net Financial Result, Margin, Client Risk Rate, and a live insight summary.
* **Demographics Analysis:** Isolates credit default distribution across Age groups, Employment status, Education level, Marital profiles, and Dependency statuses.
* **Loan Analysis:** Evaluates structural risk parameters across DTI categories, LTI bands, Risk Credit Tiers, Loan Purposes, Income tiers, Loan Terms, and Interest brackets.

**Key Insights**
* **Severe Capital Leakage:** $4.29B in defaults have completely erased the portfolio's $3.72B expected revenue, yielding an alarming portfolio risk concentration **HHI score of 3.23K**.
* **Low-Income Vulnerability:** Borrowers earning **under $30K** carry the highest default concentration at **21.96%** (nearly double the next closest income tier).
* **Leverage Tipping Point:** While the overall portfolio average LTI sits at 218%, defaulting accounts experience a catastrophic structural spike to **325%**.
* **Structural Hotspots:** Risk concentrates heavily within **Business loans (12.33%)**, the **21–25% interest bracket (17.82%)**, and the **37–48 month maturity band** (which carries the peak average interest rate of **13.51%**).
* **Compounded Demographic Risk:** Default rates peak aggressively among the **18–24 age bracket (21.03%)** and **unemployed borrowers (29.18%)**.

**Strategic Recommendations for Underwriting**
* **Automated Income Caps:** Apply strict automated rejections or require co-signers for applicants earning under \$30K.
* **Hard Leverage Ceilings:** Establish a maximum Loan-to-Income (LTI) ceiling safely below the 325% default failure threshold.
* **Exposure Caps:** Restrict credit limits and maximize collateral rules specifically for high-risk Business-purpose applications.
* **Risk Multiplier Flags:** Build automated flags into the loan origination system to block applications where multiple demographic risk factors overlap (e.g., young + unemployed + low income).

