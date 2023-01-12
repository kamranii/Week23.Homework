--Write a query to count current and discontinued products
SELECT Discontinued, COUNT(*) AS [Total] FROM Products GROUP BY Discontinued

--Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order
SELECT * FROM [Order Details]
SELECT * FROM Products
SELECT ProductName AS [Name], UnitsOnOrder, UnitsInStock, OD.Quantity AS [Ordered Qaantity] from Products AS P 
JOIN [Order Details] AS OD ON P.ProductID = OD.ProductID WHERE P.UnitsInStock < OD.Quantity

--Write a query to get discontinued Product list (Product ID and name).
SELECT ProductID AS [ID], ProductName AS [NAME] FROM Products WHERE Discontinued = 0;

--Write a query to get Product list (id, name, unit price) where current products cost less than $20
SELECT ProductID AS [ID], ProductName AS [NAME], UnitPrice FROM Products WHERE UnitPrice < 20

--Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.
SELECT ProductID AS [ID], ProductName AS [NAME], UnitPrice FROM Products WHERE UnitPrice BETWEEN 15 AND 25