-- checking to see if data is loaded correctly
select * from pcos-diagnosis-dataset.pcos.pcos
limit 10;

-- checking average age, BMI, testosterone level and follical count
SELECT 
    COUNT(*) AS total_records,
    AVG(Age) AS avg_age,
    AVG(BMI) AS avg_bmi,
    AVG(`Testosterone_Level`) AS avg_testosterone,
    AVG(Antral_Follicle_Count) AS avg_follicle_count
FROM pcos-diagnosis-dataset.pcos.pcos;

-- Distribution of PCOS Cases
SELECT 
    PCOS_Diagnosis, 
    COUNT(*) AS count 
FROM pcos-diagnosis-dataset.pcos.pcos
GROUP BY PCOS_Diagnosis;

-- BMI Distribution Among PCOS vs. Non-PCOS Patients
SELECT 
    PCOS_Diagnosis,
    AVG(BMI) AS avg_bmi
FROM pcos-diagnosis-dataset.pcos.pcos
GROUP BY PCOS_Diagnosis;

-- Menstrual Irregularity and PCOS Correlation
SELECT 
    Menstrual_Irregularity, 
    COUNT(*) AS count,
    SUM(PCOS_Diagnosis) AS total_pcos_cases
FROM pcos-diagnosis-dataset.pcos.pcos
GROUP BY Menstrual_Irregularity;

-- Testosterone Levels vs. PCOS
SELECT 
    PCOS_Diagnosis, 
    AVG(`Testosterone_Level`) AS avg_testosterone
FROM pcos-diagnosis-dataset.pcos.pcos
GROUP BY PCOS_Diagnosis;


-- AFC & PCOS Diagnosis Correlation
SELECT 
    PCOS_Diagnosis,
    COUNT(*) AS Patient_Count,
    ROUND(AVG(Antral_Follicle_Count), 2) AS Avg_AFC
FROM pcos-diagnosis-dataset.pcos.pcos
GROUP BY PCOS_Diagnosis;

-- BMI & AFC Relationship
SELECT 
    CASE 
        WHEN BMI < 18.5 THEN 'Underweight'
        WHEN BMI BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN BMI BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category,
    ROUND(AVG(Antral_Follicle_Count), 2) AS Avg_AFC
FROM pcos-diagnosis-dataset.pcos.pcos
GROUP BY BMI_Category
ORDER BY Avg_AFC DESC;
