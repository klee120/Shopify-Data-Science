/* 2A */
SELECT COUNT(*)
FROM Orders, Shippers
WHERE Orders.ShipperID = Shippers.ShipperID AND Shippers.ShipperName = "Speedy Express";

/* Speedy Express has shipped 54 orders */


/* 2B */
SELECT Employees.LastName
FROM Employees, Orders
WHERE Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID
ORDER BY COUNT(*) DESC
LIMIT 1;

/* Peacock has the most orders */


/* 2C */
SELECT Products.ProductName
FROM Products, Customers, Orders, OrderDetails
WHERE Customers.Country = "Germany" AND Customers.CustomerID = Orders.CustomerID AND OrderDetails.OrderID = Orders.OrderID AND Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductID
ORDER BY SUM(OrderDetails.Quantity) DESC
LIMIT 1;

/* Boston Crab Meat was ordered most by customers in Germany */