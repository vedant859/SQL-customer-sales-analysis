
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT Category, SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY Category
ORDER BY Total_Profit DESC;


SELECT Region, SUM(Sales) AS Revenue
FROM Orders
GROUP BY Region;


SELECT Customer_Name, SUM(Sales) AS Customer_Sales
FROM Orders
GROUP BY Customer_Name
HAVING SUM(Sales) >
(
SELECT AVG(TotalSales)
FROM (
SELECT SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Customer_Name
) x
);


SELECT YEAR(Order_Date), MONTH(Order_Date), SUM(Sales)
FROM Orders
GROUP BY YEAR(Order_Date), MONTH(Order_Date);
