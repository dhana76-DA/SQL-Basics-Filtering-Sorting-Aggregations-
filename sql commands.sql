SELECT * FROM chinook.`sample - superstore`;
SELECT  City, Region, Segment
FROM chinook.`sample - superstore`;
SELECT Country, Category 
FROM chinook.`sample - superstore`;
SELECT * FROM chinook.`sample - superstore` 
WHERE Category = 'Technology';
SELECT `Product Name`, Sales
FROM chinook.`sample - superstore`
WHERE Category = 'Technology'
ORDER BY Sales DESC;
SELECT  City, Region, `Customer Name`
FROM chinook.`sample - superstore`;
SELECT `Product Name`, Sales
FROM chinook.`sample - superstore`
WHERE Region = 'West'
ORDER BY Sales DESC;

SELECT `Product Name`, Sales 
FROM chinook.`sample - superstore` 
WHERE Category = 'Technology' 
ORDER BY Sales DESC 
LIMIT 100000;

SELECT 
    Region, 
    COUNT(*) AS Total_Orders, 
    SUM(Sales) AS Total_Revenue, 
    AVG(Profit) AS Average_Profit
FROM chinook.`sample - superstore`
GROUP BY Region
ORDER BY Total_Revenue DESC;

SELECT 
    Category, 
    `Sub-Category`, 
    SUM(Sales) AS Sub_Total_Sales,
    SUM(Quantity) AS Total_Units_Sold
FROM chinook.`sample - superstore`
GROUP BY Category, `Sub-Category`
ORDER BY Category ASC, Sub_Total_Sales DESC;
SELECT 
    Region, 
    AVG(Profit) AS Avg_Profit
FROM chinook.`sample - superstore`
GROUP BY Region
HAVING AVG(Profit) < 30
ORDER BY Avg_Profit ASC;

SELECT 
    Category, 
    SUM(Sales) AS Total_Sales
FROM chinook.`sample - superstore`
GROUP BY Category
HAVING SUM(Sales) > 100000
ORDER BY Total_Sales DESC;

SELECT 
    Region, 
    SUM(Sales) AS Tech_Sales
FROM chinook.`sample - superstore`
WHERE Category = 'Technology'   -- 1. Filter raw rows first
GROUP BY Region                 -- 2. Group them
HAVING SUM(Sales) > 50000       -- 3. Filter the final groups
ORDER BY Tech_Sales DESC;       -- 4. Sort the result

SELECT 
    `Sub-Category`, 
    AVG(Profit) AS Average_Profit
FROM chinook.`sample - superstore`
GROUP BY `Sub-Category`
HAVING AVG(Profit) < 10;

SELECT 
    `Order Date`, 
    `Order ID`, 
    Sales 
FROM chinook.`sample - superstore`
WHERE `Order Date` BETWEEN '2015-01-01' AND '2015-01-31'
ORDER BY `Order Date` ASC;

SELECT `Order Date`, `Order ID`, Sales 
FROM chinook.`sample - superstore` 
WHERE STR_TO_DATE(`Order Date`, '%m/%d/%Y') BETWEEN '2015-01-01' AND '2015-01-31'
ORDER BY STR_TO_DATE(`Order Date`, '%m/%d/%Y') ASC;

SELECT `Customer Name`, City, State
FROM chinook.`sample - superstore`
WHERE `Customer Name` LIKE 'Mc%'
ORDER BY `Customer Name`;

SELECT `Customer Name`, City, Region
FROM chinook.`sample - superstore`
WHERE `Customer Name` LIKE '%Miller%'
ORDER BY `Customer Name`;


SELECT 
    `Product Name`, 
    SUM(Sales) AS Total_Sales,
    COUNT(*) AS Order_Count
FROM chinook.`sample - superstore`
WHERE STR_TO_DATE(`Order Date`, '%m/%d/%Y') BETWEEN '2015-01-01' AND '2015-01-31'
  AND `Ship Mode` = 'Standard Class'
  AND `Product Name` LIKE '%Phone%'
GROUP BY `Product Name`
ORDER BY Total_Sales DESC;

SELECT Category, SUM(Sales) FROM chinook.`sample - superstore` GROUP BY Category HAVING SUM(Sales) > 100000;

SELECT 
    Category, 
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    COUNT(`Order ID`) AS Transaction_Count
FROM chinook.`sample - superstore`
GROUP BY Category
HAVING SUM(Sales) > 100000
ORDER BY Total_Revenue DESC;


