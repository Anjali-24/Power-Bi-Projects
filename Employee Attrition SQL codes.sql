show databases;
use hr_attrition;
CREATE TABLE EmployeeAttrition (
    EmployeeNumber INT,
     Attrition VARCHAR(5),
    Age INT,
    BusinessTravel VARCHAR(50),
	DailyRate INT,
	DistanceFromHome INT,
	Education INT,
	EducationField VARCHAR(50),
    EmployeeCount INT,
	EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
	JobLevel INT,
    Department VARCHAR(50),
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(50),
    MonthlyIncome INT,
    MonthlyRate INT,
	NumCompaniesWorked INT,
	Over18 CHAR(1),
    OverTime VARCHAR(5),
	PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT);

SELECT COUNT(*) FROM EmployeeAttrition;
select * from EmployeeAttrition;

/*Attrition by Department*/
SELECT Department,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
       ROUND((SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0)/COUNT(*),2) AS Attrition_Rate
FROM EmployeeAttrition
GROUP BY Department
ORDER BY Attrition_Rate DESC;

/*Attrition by Job Roles*/
SELECT JobRole,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
       ROUND((SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100.0)/COUNT(*),2) AS Attrition_Rate_Percent
FROM EmployeeAttrition
GROUP BY JobRole
ORDER BY Attrition_Rate_Percent DESC;

/*Overall attrition rate*/
SELECT 
    ROUND(
        (SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS Attrition_Rate_Percent,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    COUNT(*) AS Total_Employees
FROM EmployeeAttrition;

/*Attrition by Overtime*/
SELECT OverTime,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
       ROUND(
         (SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0)/COUNT(*),
         2
       ) AS Attrition_Rate_Percent
FROM EmployeeAttrition
GROUP BY OverTime
ORDER BY Attrition_Rate_Percent DESC;

/*Attrition by Years at Company (Tenure Analysis)*/
SELECT YearsAtCompany,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
       ROUND(
         (SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0)/COUNT(*),
         2
       ) AS Attrition_Rate_Percent
FROM EmployeeAttrition
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;




 

    







