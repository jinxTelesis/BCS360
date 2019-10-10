USE AdventureWorks2012;

SELECT FirstName,LastName
FROM Person.Person
WHERE LastName = 'Adams' AND FirstName = 'Alex'

SELECT FirstName AS First, LastName AS Last
FROM Person.Person
WHERE LastName ='Adams' AND FirstName = 'Alex'

USE AdventureWorks2012;

SELECT * FROM Sales.SalesOrderDetail

select lastname +',' firstname
from person.person
order by firstname


USE AdventureWorks2012;
select lastname + ', ' + firstname + ' : ' + CONVERT(varchar(5),EmailPromotion)
from person.person

USE AdventureWorks2012;
select Lastname + ', ' + Firstname
from person.Person
where Lastname LIKE 'A%'

select Lastname + ', ' + FirstName
from person.Person
where LastName LIKE '%ber%'

select Lastname + ', ' +Firstname
from person.person
where Lastname LIKE '[adg]%'

select Lastname + ', ' + Firstname
from person.person
where Lastname IN ('Adams','Jones','Smith')
AND Firstname LIKE '[d-f]%'

select top 5 * from person.Person

select top 5 * from person.Address

CREATE Table Employees
(EID int not null,
FirstName varchar(20) not null,
LastName varchar(25) not null,
StreetAddress varchar(50),
City varchar(20),
State char(2))

CREATE TABLE Customers
(CID int not null,
FirstName varchar(20) not null,
LastName varchar(25) not null,
StreetAddress varchar(50),
City varchar(20),
State char(2)
)

           
           USE AdventureWorks2012;

SELECT FirstName,LastName
FROM Person.Person
WHERE LastName = 'Adams' AND FirstName = 'Alex'

SELECT FirstName AS First, LastName AS Last
FROM Person.Person
WHERE LastName ='Adams' AND FirstName = 'Alex'

USE AdventureWorks2012;

SELECT * FROM Sales.SalesOrderDetail

select lastname +',' firstname
from person.person
order by firstname


USE AdventureWorks2012;
select lastname + ', ' + firstname + ' : ' + CONVERT(varchar(5),EmailPromotion)
from person.person

USE AdventureWorks2012;
select Lastname + ', ' + Firstname
from person.Person
where Lastname LIKE 'A%'

select Lastname + ', ' + FirstName
from person.Person
where LastName LIKE '%ber%'

select Lastname + ', ' +Firstname
from person.person
where Lastname LIKE '[adg]%'

select Lastname + ', ' + Firstname
from person.person
where Lastname IN ('Adams','Jones','Smith')
AND Firstname LIKE '[d-f]%'

select top 5 * from person.Person

select top 5 * from person.Address

CREATE Table Employees
(EID int not null,
FirstName varchar(20) not null,
LastName varchar(25) not null,
StreetAddress varchar(50),
City varchar(20),
State char(2))

CREATE TABLE Customers
(CID int not null,
FirstName varchar(20) not null,
LastName varchar(25) not null,
StreetAddress varchar(50),
City varchar(20),
State char(2)
)

INSERT INTO Employees
 VALUES
 ('1','Jack','Harris','1423 Main Street', 'Jackson', 'TN'),
 ('2','Mark','James','432 Seashore Street', 'Nashville', 'TN'),
 ('3','Alice','Johnson','5235 Highway 495', 'Brentwood', 'TN'),
 ('4','Morgan','Denton','4634 Bluebird Lane', 'Dickson', 'TN'),
 ('5','Don','Carleson','62346 Williamsburg Court', 'Nolensville', 'TN')

 INSERT INTO Customers
 VALUES
 ('101','Jerry','Algood','333 Bullard Ave', 'Chicago', 'IL'),
 ('102','John','Williams','2523 First Avenue North', 'Atlanta', 'GA'),
 ('103','Kristin','Addison','26675 East Hwy 33', 'Dallas', 'TX'),
 ('104','Megan','Wilson','6786 3rd Ave', 'Memphis', 'TN'),
 ('105','Janet','Greene','99674 Jackson Square', 'Louisville', 'KY')


 select * from Employees
 select * from Customers

 select firstName, Lastname, StreetAddress, City, State
 from employees
 UNION
 select Firstname, Lastname, StreetAddress, City, State
 from customers

 select firstName, Lastname, City, State
 from employees
 UNION
 Select firstname, Lastname, City, State
 FROM customers

 select productid
 from production.product
 order by productid

 select productid
 from production.workorder
 
select productid -- gets all that are in both
from production.product
INTERSECT
select productid
from production.workorder 

select productid -- gets all that are not in boths
from production.product
EXCEPT
Select productid
from production.workorder 

SELECT productid, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER By Name ASC
OFFSET 0 ROWS FETCH NEXT 15 ROWS ONLY

SELECT productid, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER By Name ASC
OFFSET 15 ROWS FETCH NEXT 15 ROWS ONLY

select * from Production.Product

select ProductId, Name, Availability=
	Case DaysToManufacture
		WHEN '0' THEN 'Immediate'
		WHEN '1' THEN 'Two Business Days'
		WHEN '2' THEN 'Three Business Days'
		WHEN '3' THEN 'Four Business Days'
		ELSE 'Verify Availablity'
	END
from Production.Product

select ProductID, Name, Availablity=
	CASE
		WHEN DaysToManufacture = '0' THEN 'Immediate'
		WHEN DaysToManufacture = > 0 AND DaysToManufacture < '4' THEN 'Four Business Days'
		WHEN DaysToManufacture = 4 THEN 'Six business days'
		ELSE 'Verify Availability'
	END
from Production.Product

CREATE TABLE dbo.PivotTest
(
  OrderID   INT        NOT NULL,
  OrderDate DATE       NOT NULL,
  SalesID     INT        NOT NULL,
  CustID    VARCHAR(5) NOT NULL,
  Qty       INT        NOT NULL,
  CONSTRAINT PK_Orders PRIMARY KEY(OrderID)
);


INSERT INTO dbo.PivotTest(OrderID, OrderDate, SalesID, CustID, Qty)
VALUES
  (30001, '20120601', 3, 'A', 9),
  (10001, '20121018', 2, 'A', 21),
  (10005, '20121018', 1, 'B', 15),
  (40001, '20130111', 3, 'A', 26),
  (10006, '20130107', 1, 'C', 8),
  (20001, '20130209', 2, 'B', 21),
  (40005, '20140209', 1, 'A', 15),
  (20002, '20140222', 1, 'C', 13),
  (30003, '20140417', 2, 'B', 8),
  (30004, '20120417', 3, 'C', 7),
  (30007, '20130922', 2, 'D', 22);
