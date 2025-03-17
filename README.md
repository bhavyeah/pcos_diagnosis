# PCOS Prediction using Machine Learning & SQL

## Overview
This project aims to analyze a dataset of 1000 women to identify key factors influencing PCOS (Polycystic Ovary Syndrome) and build machine learning models to predict PCOS diagnoses. SQL was used for initial data exploration, while Python-based ML models were developed for classification.

## Dataset Summary
- Total women studied: **1000**
- Women diagnosed with PCOS: **199**
- Women without PCOS: **801**
- Key Observations:
  - Women with menstrual irregularity were more likely to have PCOS.
  - **Average BMI**: 30.12 (PCOS) vs. 25.45 (non-PCOS)
  - **Average Testosterone Levels (ng/dL)**: 69.4 (PCOS) vs. 57.8 (non-PCOS)
  - **Average Antral Follicle Count (AFC)**: 20.19 (PCOS) vs. 16.79 (non-PCOS)

## Technologies Used
- **SQL (BigQuery)** for data exploration and analysis
- **Python (Jupyter Notebook)** for ML modeling
- **Scikit-Learn, XGBoost, Matplotlib, Seaborn** for data processing and visualization

## SQL Data Exploration
- Extracted PCOS prevalence and demographic insights
- Analyzed the impact of BMI, testosterone, and AFC levels on PCOS
- Aggregated statistics to guide ML feature selection

## Machine Learning Models
1. **Logistic Regression**
2. **Random Forest**
3. **XGBoost (Best performing model)**

### Model Performance
- **XGBoost achieved 100% accuracy** on both training and test sets, with consistent cross-validation scores.
- Feature Importance Analysis (XGBoost):
  - **Menstrual Irregularity** had the highest impact on PCOS diagnosis.
  - BMI, AFC, and Testosterone levels were also significant contributors.

## Overfitting Check
- Cross-validation accuracy aligned closely with test accuracy, confirming model reliability.

## Conclusion
This project successfully identified key PCOS indicators and built an accurate predictive model. The combination of SQL analysis and ML models offers a strong data-driven approach to PCOS prediction.

## Next Steps
- Expand the dataset to validate findings on a larger population.
- Implement model deployment for real-world usability.
- Further optimize hyperparameters to improve generalizability.

---
📌 **Author:** Bhavya Jha  
📌 **Tools Used:** BigQuery (SQL), Scikit-Learn, XGBoost, Matplotlib, Seaborn  
📌 **Project Type:** Data Analysis + Machine Learning  
