Create Proc spCalcMaxTotalAmount
@minTotalAmt float,
@CustomerID int
As 
Begin -- logic
if @minTotalAmt<=(
SELECT (ItemPrice -  DiscountAmount) * Quantity AS totalOrders
FROM tCus
Join tOrd on tCus.CustomerID = tOrd.CustomerID
Join tOIt on tOIt.OrderID = tOrd.OrderID
WHERE TCus.CustomerID = @CustomerID)


Select Firstname, lastName, (ItemPrice - DiscountAmount) * Quantity AS totalOrders, 'this is.....' as shippingstasus
FROM tCus 
Join tOrd on tCus.CustomerID = tOrd.CustomerID
Join tOIt on tOIt.OrderID = tOrd.OrderID
Group by FirstName,LastName, tCus.customerid
having tCus.CustomerID = @CustomerID--(ItemPrice - DiscountAmount) * Quantity 

--PRINT  N''+ FirstName + ' ' + LastName + ' ' + totalOrders +  'THis is a high Priced order add additonal shipping charge'

else
(
Select Firstname, lastName, (ItemPrice - DiscountAmount) * Quantity AS totalOrders 
FROM tCus 
Join tOrd on tCus.CustomerID = tOrd.CustomerID
Join tOIt on tOIt.OrderID = tOrd.OrderID
WHERE tCus.CustomerID = @CustomerID
Group by FirstName,LastName, (ItemPrice - DiscountAmount) * Quantity 
-- display 
--PRINT N''+ FirstName + ' ' + LastName + ' ' + totalOrders +  'this is a regular order, no extra shipping'

)
End  

Exec spCalcMaxTotalAmount 300.00,1 
