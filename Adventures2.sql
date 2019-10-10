SELECT TOP 1 * from person.person
SELECT TOP 1 * from person.EmailAddress

select Person.FirstName, Person.LastName
from Person.Person
JOIN
Person.EmailAddress
ON
Person.BusinessEntityID = EmailAddress.BusinessEntityID
WHERE LastName like 'b%'
order by Lastname, FirstName

select top 5 * from Production.Product
select top 5 * from Production.ProductReview

SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID

Select p.Name, pr.ProductReviewID
FROM Production.Product p
RIGHT OUTER JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID

SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
CROSS JOIn
Production.ProductReview pr

select * from sales.SalesOrderDetail

select SUM(LineTotal) 'Line Totals'
from sales.SalesOrderDetail

select COUNT(LineTotal) 'Line Totals over 25,000'
from sales.SalesOrderDetail
where LineTotal>25000

select AVG(LineTotal) 'Line Totalsover 25,000'
FROM sales.SalesOrderDetail

select * from sales.SalesOrderDetail

-- Having Examples
select productid, sum(linetotal)
from sales.SalesOrderDetail
where LineTotal > 2000
group by productid
HAVING SUM(linetotal) > 25000
order by productid

-- Grouping Sets
