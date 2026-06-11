CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Quantity INT
);
