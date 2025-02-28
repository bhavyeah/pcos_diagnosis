# pcos_diagnosis
This project analyses PCOS and non-PCOS patients using Python Pandas and SQL. The data was cleaned first using Pandas, then the cleaned file was uploaded into BigQuery for SQL analysis.

These observations were made from the dataset:
- A total of 1000 women were studied in this survey
- The no. of females who do have PCOS is 199
- the no. of females who do not have PCOS 801
- Women who had menstrual irregularity were more likely to have PCOS
- The average BMI of a female without PCOS is 25.45
- The average BMI of a female with PCOS is 30.12
- The average testosterone level of PCOS patients was 69.4
- The average testosterone level in women without PCOS was 57.8
- The average (AFC) or antral follicle count = 17.4 ng/dL 
- Underweight women had the highest average AFC (20.0), whereas women with a normal BMI score had the lowest average AFC (16.9)

Metrics to keep in mind:
- average age = 31.7 (age range in dataset is from 18-45)
- average BMI of this dataset = 26.3 (BMI range is from 18 to 35; a healthy BMI ranges between 18.5–24.9)
- average testosterone of this dataset = 60.1 ng/dL (testosterone levels range from 20 to 100 ng/dL)
- The average AFC of non-PCOS women was 16.79, whereas the average AFC of PCOS patients was 20.19

Dataset procured from Kaggle. 
Link: https://www.kaggle.com/datasets/samikshadalvi/pcos-diagnosis-dataset
