-- 1. Rank Departments by Attrition --

WITH DepartmentAttrition AS
(
SELECT
Department,
COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY Department
)

SELECT *,
RANK() OVER(ORDER BY Employees_Left DESC) AS Department_Rank

FROM DepartmentAttrition;

-- 2. Rank Job Roles by Attrition --

WITH JobRoleAttrition AS
(
SELECT
JobRole,
COUNT(*) AS Employees_Left

FROM employees

WHERE Attrition='Yes'

GROUP BY JobRole
)

SELECT *,
DENSE_RANK() OVER(ORDER BY Employees_Left DESC) AS Attrition_Rank

FROM JobRoleAttrition;

-- 3. Highest Paid Employee in Every Department --

WITH SalaryRank AS
(
SELECT
Department,
EmployeeNumber,
MonthlyIncome,

ROW_NUMBER() OVER
(
PARTITION BY Department
ORDER BY MonthlyIncome DESC
) AS rn

FROM employees
)

SELECT *

FROM SalaryRank

WHERE rn=1;

-- 4. Top 10 Highest Paid EmployeesSELECT

SELECT
EmployeeNumber,
Department,
JobRole,
MonthlyIncome,

RANK() OVER
(
ORDER BY MonthlyIncome DESC
) AS SalaryRank

FROM employees

LIMIT 10; --

-- 4. Top 10 Highest Paid Employees --

SELECT
EmployeeNumber,
Department,
JobRole,
MonthlyIncome,

RANK() OVER
(
ORDER BY MonthlyIncome DESC
) AS SalaryRank

FROM employees

LIMIT 10;

-- 5. Salary Quartiles --

SELECT
EmployeeNumber,
MonthlyIncome,

NTILE(4) OVER
(
ORDER BY MonthlyIncome
) AS Salary_Quartile

FROM employees;

-- 6. Department Salary Ranking --

SELECT
Department,
EmployeeNumber,
MonthlyIncome,

RANK() OVER
(
PARTITION BY Department
ORDER BY MonthlyIncome DESC
) AS SalaryRank

FROM employees;

-- 7. Running Total of Employees --

WITH DeptCount AS
(
SELECT
Department,
COUNT(*) AS Employees

FROM employees

GROUP BY Department
)

SELECT
Department,
Employees,

SUM(Employees) OVER
(
ORDER BY Employees DESC
) AS Running_Total

FROM DeptCount;

-- 8. Department Contribution % --

SELECT
Department,

COUNT(*) AS Employees,

ROUND(
COUNT(*)*100/
SUM(COUNT(*)) OVER(),
2
) AS Percentage

FROM employees

GROUP BY Department;

-- 9. Employees Above Department Average Salary --

SELECT
EmployeeNumber,
Department,
MonthlyIncome

FROM employees e

WHERE MonthlyIncome>

(
SELECT AVG(MonthlyIncome)

FROM employees

WHERE Department=e.Department
);

-- 10. Longest Serving Employee --

SELECT

EmployeeNumber,

Department,

YearsAtCompany

FROM employees

ORDER BY YearsAtCompany DESC

LIMIT 10;

-- 11. Most Experienced Employees --

SELECT

EmployeeNumber,

Department,

TotalWorkingYears

FROM employees

ORDER BY TotalWorkingYears DESC

LIMIT 10;

-- 12. Average Salary Difference from Department Average --

SELECT
EmployeeNumber,
Department,
MonthlyIncome,

ROUND(
MonthlyIncome-
AVG(MonthlyIncome) OVER(PARTITION BY Department),
2
) AS Salary_Difference

FROM employees;

-- 13. Rank Employees by Experience --

SELECT
EmployeeNumber,
Department,
TotalWorkingYears,

RANK() OVER
(
ORDER BY TotalWorkingYears DESC
) AS Experience_Rank

FROM employees;

-- 14. Attrition Percentage by Department --

SELECT
Department,

ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0/
COUNT(*),
2
) AS Attrition_Percentage

FROM employees

GROUP BY Department

ORDER BY Attrition_Percentage DESC;

-- 15. Average Income by Job Role Compared with Overall Average --

SELECT
JobRole,

ROUND(AVG(MonthlyIncome),2) AS Avg_Salary,

ROUND(
AVG(MonthlyIncome)-
(SELECT AVG(MonthlyIncome) FROM employees),
2
) AS Difference_From_Overall

FROM employees

GROUP BY JobRole

ORDER BY Avg_Salary DESC;
*/