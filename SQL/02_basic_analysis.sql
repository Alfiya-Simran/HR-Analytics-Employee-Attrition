-- 1. Total Employees

SELECT
    COUNT(*) AS Total_Employees
FROM employees;

-- 2. Active Employees

SELECT
    COUNT(*) AS Active_Employees
FROM employees
WHERE Attrition = 'No';

-- 3. Employees Left

SELECT
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes';

-- 4. Attrition Rate

SELECT
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees;

-- 5. Average Age

SELECT
    ROUND(AVG(Age),2) AS Average_Age
FROM employees;

-- 6. Average Monthly Income

SELECT
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employees;

-- 7. Average Years at Company

SELECT
    ROUND(AVG(YearsAtCompany),2) AS Average_Years_At_Company
FROM employees;

-- 8. Average Job Satisfaction

SELECT
    ROUND(AVG(JobSatisfaction),2) AS Average_Job_Satisfaction
FROM employees;

-- 9. Average WorkLife Balance

SELECT
    ROUND(AVG(WorkLifeBalance),2) AS Average_WorkLifeBalance
FROM employees;

-- 10. Gender Distribution

SELECT
    Gender,
    COUNT(*) AS Employees
FROM employees
GROUP BY Gender
ORDER BY Employees DESC;