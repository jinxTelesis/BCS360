CREATE PROCEDURE spVendorsByState @StateVar char(2) AS
SELECT VendorName, VnedorState, VendorPhone
FROM VendorState = @StateVar
ORDER BY VendorName; 

SELECT VendorContactFName, VendorContactLName,
LEFT(VendorContactFName, 1) +
LEFT(VendorContactLName, 1) AS Initials
FROM Vendors;

SELECT InvoiceDate,
GETDATE() AS 'Today''s Date!',
DATEDIFF(day, InvoiceDate, GETDATE()) AS StoneAGE
FROM INVOICES;

SELECT DISTINCT VendorCity, VendorState
FROM Vendors;

SELECT TOP 5 VendorID, InvoiceTotal
FROM Invoices
ORDER BY InvoiceTotal DESC;

SELECT InvoiceDate,
FROM Invoices,
WHERE InvoiceDate BETWEEN Getdate() AND GETDATE() + 45

SELECT *
FROM NullSample
WHERE InvocieTotal = 0;

SELECT *
FROM NullSample
WHERE InvoiceTotal <> 0;

SELECT *
FROM NullSample
WHERE InvoiceTotal IS NULL;

SELECT *
FROM NullSample
WHERE InvoiceTotal is NOT NULL;

SELECT InvoiceNumber, InvoiceLineItemAmount, InvoiceLineItemDescription
FROM Invoices JOIN InvoiceLineItems AS LineItems
ON Invoices.InvoiceID = LineItems.InvoiceID
WHERE AccountNo = 540;
ORDER BY InvoiceDate;

SELECT VendorName, InvoiceNumber, InvoiceDate,
InvoiceLineItemAmount AS LineItemAmount, AccountDescription
FROM Vendors
JOIN Invoices ON Vendors.VendorID = Invoices.VendorID
JOIN InvoiceLineItems
On Invoices.InvoiceID = InvoiceLineItems.InvoiceID
JOIN GLAccounts ON InvoiceLineItems.AccountNo = GLAccounts.AccountNO
ORDER BY VnedorName, LineItemAMount DeSC;
