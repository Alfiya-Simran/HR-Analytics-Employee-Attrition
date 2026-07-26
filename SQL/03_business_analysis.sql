-- 1. Department-wise Attrition

SELECT
    Department,
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;

-- 2. Job Role-wise Attrition

SELECT
    JobRole,
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;

-- 3. Overtime vs Attrition

SELECT
    OverTime,
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY OverTime;

-- 4. Education Field Attrition

SELECT
    EducationField,
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY EducationField
ORDER BY Employees_Left DESC;

-- 5. Marital Status Attrition

SELECT
    MaritalStatus,
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY MaritalStatus
ORDER BY Employees_Left DESC;

-- 6. Age Group Attrition

SELECT
CASE
WHEN Age < 25 THEN 'Under 25'
WHEN Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
WHEN Age BETWEEN 45 AND 54 THEN '45-54'
ELSE '55+'
END AS Age_Group,

COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY Age_Group

ORDER BY Employees_Left DESC;

-- 7. Salary Band Attrition

SELECT

CASE

WHEN MonthlyIncome < 4000 THEN 'Low Income'

WHEN MonthlyIncome BETWEEN 4000 AND 7999 THEN 'Medium Income'

WHEN MonthlyIncome BETWEEN 8000 AND 14999 THEN 'High Income'

ELSE 'Very High Income'

END AS Salary_Band,

COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY Salary_Band

ORDER BY Employees_Left DESC;

-- 8. Work-Life Balance Attrition

SELECT

WorkLifeBalance,

COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY WorkLifeBalance

ORDER BY WorkLifeBalance;

-- 9. Job Satisfaction Attrition

SELECT

JobSatisfaction,

COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY JobSatisfaction

ORDER BY JobSatisfaction;

-- 10. Business Travel Attrition

SELECT

BusinessTravel,

COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY BusinessTravel

ORDER BY Employees_Left DESC;

-- 11. Average Salary by Department

SELECT

Department,

ROUND(AVG(MonthlyIncome),2) AS Average_Salary

FROM employees

GROUP BY Department

ORDER BY Average_Salary DESC;

-- 12. Department Satisfaction

SELECT

Department,

ROUND(AVG(JobSatisfaction),2) AS Avg_Satisfaction

FROM employees

GROUP BY Department

ORDER BY Avg_Satisfaction DESC;

-- 13. Highest Paying Job Roles

SELECT

JobRole,

ROUND(AVG(MonthlyIncome),2) AS Average_Salary

FROM employees

GROUP BY JobRole

ORDER BY Average_Salary DESC;

-- 14. Department-wise Average Tenure

SELECT

Department,

ROUND(AVG(YearsAtCompany),2) AS Avg_Years

FROM employees

GROUP BY Department

ORDER BY Avg_Years DESC;

-- 15. Salary by Education Field

SELECT

EducationField,

ROUND(AVG(MonthlyIncome),2) AS Average_Salary

FROM employees

GROUP BY EducationField

ORDER BY Average_Salary DESC;

