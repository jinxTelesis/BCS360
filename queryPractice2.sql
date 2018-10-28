SELECT 'After 9/1/2015' AS SelectionDate, COUNT(*) AS NumberOfInvoices,
AVG(InvoiceTotal) AS AverageInvoiceAmount,
SUM(InvoiceTotal) AS TotalInvoiceAmount
FROM InvoicesB
WHERE InvoiceDate > '2015-09-01';

SELECT 'AFTER 9/1/2015' AS SelectionDate, Count(*) AS NumberOfInvoices,
MAX(InvoiceTotal) AS HighestInvoiceTotal,
MIN(InvoiceTotal) AS LowestInvoiceTotal
FROM InvoicesB
WHERE InvoiceDate > '2015-09-01';

SELECT COUNT(DISTINCT VendorID) AS NUMBEROFVENDORS,
COUNT(VendorID) AS NumberOfInvoices,
AVG(InvoiceTotal) AS AverageInvoiceAmount,
SUM(InvoiceTotal) AS TotalInvoiceAmount
FROM InvoicesB
WHERE InvoiceDate > '2015-09-01';

SELECT VendorID, AVG(InvoiceTotal) AS AverageInvoiceAmount
FROM InvoicesB
GROUP BY VendorID -- need to put this in 
HAVING AVG(InvoiceTotal) > 2000
ORDER BY AverageInvoiceAmount DESC;

SELECT VendorID, COUNT(*) AS InvoiceQty
FROM InvoicesB
GROUP BY VendorID;

SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty,
AVG(InvoiceTotal) AS InvoiceAvg
FROM InvoicesB JOIN Vendors
ON Invoices.VendorID = Vendors.VendorID
GROUP BY VendorState, VendorCity
ORDER BY VendorState, VendorCity;

SELECT VendorName, COUNT(*) AS InvoiceQTY,
AVG(InvoiceTotal) AS InvoiceAvg
FROM Vendors JOIN Invoices
ON Vendors.VendorID = InvoiceID.VendorID
GROUP BY VendorName
HAVING AVG(InvoiceTotal) > 500
ORDER BY InvoiceQty DESC;

SELECT VendorName, COUNT(*) AS InvoiceQty,
AVG(InvoiceTotal) AS InvoiceAvg
FROM Vendors JOIN Invoices
ON Vendors.VendorID = Invoices.VendorID
WHERE InvoiceTotal > 500
GROUP BY VendorName
ORDER BY InvoiceQty DESC;

SELECT InvoiceDate, COUNT(*) AS invoiceQty, SUM(InvoiceTotal) AS InvoiceSum
FROM Invoices
GROUP BY InvoiceDate
HAVING InvoiceDate BETWEEN '2016-01-01' AND '2016-01-31'
AND COUNT(*) > 1
AND SUM(InvoiceTotal) > 100
ORDER BY InvoiceDate DESC;

SELECT InvoiceDate, COUNT(*) AS InvoiceQty, SUM(InvoiceTotal) AS InvoiceSum
FROM Invoices
WHERE InvoiceDate BETWEEN '2016-01-01' AND '2016-01-31'
GROUP BY InvoiceDate
HAVING COUNT(*) > 1
AND SUM(invoiceTotal) > 100
ORDER BY InvoiceDate DESC;

SELECT VendorID, COUNT(*) as InvoiceCount,
SUM(InvoiceTotal) AS InvoiceTotal
FROM Invoices
GROUP BY VendorID WITH ROLLUP;

SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors
FROM Vendors
WHERE VendorState IN ('IA','NJ')
GROUP BY VendorState, VendorCity WITH ROLLUP

SELECT VendorID, COUNT(*) AS InvoiceCount,
SUM(InvoiceTotal) AS InvoiceTotal
FROM Invoices
GROUP BY VendorID WITH CUBE;

SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors
FROM Vendors
WHERE VendorState IN ('IA','NJ')
GROUP BY GROUPING SETS(VendorState, VendorCity)
ORDER BY VendorState DESC, VendorCity DESC;

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal,
SUM(InvoiceTotal) OVER (PARTITION BY InvoiceDate) AS DateTotal,
COUNT(InvoiceTotal) OVER (PARTITION BY InvoiceDate) AS DateCount,
AVG(InvoiceTotal) OVER (PARTITION BY InvoiceDate) AS DateAvg
FROM InvoicesB;

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
FROM Invoicesb
WHERE InvoiceTotal >
(SELECT AVG(InvoiceTotal)
FROM Invoicesb)
ORDER BY InvoiceTotal;

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
FROM InvoicesB JOIN Vendors
ON Invoices.VendorID = Vendors.VendorID
WHERE VendorState = 'CA'
ORDER BY InvoiceDate;

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
FROM Invoices
WHERE VendorID IN
(SELECT VendorID
FROM Vendors
WHERE VendorState = 'ca')
ORDER BY InvoiceDate;

SELECT VendorID, VendorName, VendorState
FROM Vendors
(SELECT DISTINCT VendorID
FROM Invoices);

SELECT Vendors.VendorID, VendorName, VendorState
FROM Vendors LEFT JOIN Invoices
On Vendors.VendorID = Invoices.VendorID
WHERE Invoices.VendorID IS NULL;

SELECT * FROM DateSample
WHERE Convert(date, StartDate) = '2011-10-28';

SELECT * FROM DateSample
WHERE StartDate >= '09:00;00' AND
StartDate < '12:59:59:999';

SELECT InvoiceNumber, TermsID,
CASE TermsID
WHEN 1 THEN 'Net due 10 days'
WHEN 2 THEN 'Net due 20 days'
WHEN 3 THEN 'Net due 30 days'
WHEN 4 THEN 'Net due 60 days'
WHEN 5 THEN 'Net due 90 days'
END AS TERMS
FROM Invoices;

SELECT
CASE
WHEN GROUPING(VendorState) = 1 THEN 'All'
ELSE VendorState
END AS VendorState,
CASE
WHEN GROUPING(VendorCity) = 1 THEN 'All'
ELSE VendorCity
COUNT(*) AS QtyVendors
FROM Vendors
WHERE VendorState IN ('IA','NJ')
GROUP BY VendorState, VendorCity with RollUP
ORDER BY VendorState DESC, VendorCity DESC;

