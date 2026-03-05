-- Total electricity usage by state
SELECT States, SUM(Usage) AS Total_Usage
FROM electricity_data
GROUP BY States
ORDER BY Total_Usage DESC;

-- Monthly electricity consumption
SELECT DATE_FORMAT(Dates,'%Y-%m') AS Month,
SUM(Usage) AS Total_Usage
FROM electricity_data
GROUP BY Month
ORDER BY Month;

-- Region wise electricity usage
SELECT Regions, SUM(Usage) AS Total_Usage
FROM electricity_data
GROUP BY Regions;

-- Lockdown period usage (March–June 2020)
SELECT States, SUM(Usage) AS Lockdown_Usage
FROM electricity_data
WHERE Dates BETWEEN '2020-03-01' AND '2020-06-30'
GROUP BY States;