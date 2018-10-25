SELECT OrderID, OrderDate, ShipAmount
FROM tOrd
WHERE ShipAmount >
(SELECT AVG(ShipAmount)
FROM tOrd)
ORDER BY ShipAmount;

SELECT orderID, shipDate, ShipAmount, FirstName, LastName
FROM tOrd JOIN tCus
ON tOrd.CustomerID = tCus.CustomerID
WHERE FirstName = 'bob'
ORDER BY shipDate;

SELECT orderID, shipDate, ShipAmount
FROM tOrd
WHERE CustomerID IN
(Select CustomerID
FROM tCus 
WHERE FirstName = 'timmy')
ORDER BY shipDate;

SELECT OrderID, ItemID, ItemPrice
FROM tOrd AS Inventory
WHERE ItemPrice >
(SELECT AVG(ItemPrice)
FROM tOrd AS Inventory_Sub
WHERE Inventory_Sub.OrderID = Inventory.OrderID)
ORDER BY OrderID, ItemPrice;

SELECT VendorID, VendorName, VendorState
FROM Vendors
WHERE NOT EXISTS
(SELECT * 
FROM Invoices
WHERE Invoices.VendorID = Vendors.VendorID);

SELECT Invoices.VendorID, MAX(InvoiceDate) AS LatestInv,
AVG(InvoiceTotal) AS AvgInvoice
FROM Invoices JOIN
(SELECT TOP 5 VendorID, AVG(InvoiceTotal) AS AvgInvoice
FROM Invoices
GROUP BY VendorID
ORDER BY AvgInvoice DESC) AS TopVendor
ON Invoices.VendorID = TopVendor.VendorID
GROUP BY Invoices.VendorID
ORDER BY LatestInv DESC;

SELECT InvoiceDate, InvoiceTotal,
CAST(InvoiceDate AS varchar) AS varcharDate,
Cast(InvoiceTotal AS int) AS integerTotal,
CAST(InvoiceTotal AS varchar) AS varcharTotal
FROM invoices;

SELECT CONVERT(varchar, ShipDate) AS varcharDate,
CONVERT(varchar, ShipDate, 1) AS varchatDate_1,
CONVERT(varchar, ShipDate, 107) AS varcharDate_107,
CONVERT(varchar, ShipDate) AS varcharTotal,
CONVERT(varchar, ShipDate, 1) AS varcharTotal_1
FROM tOrd;
