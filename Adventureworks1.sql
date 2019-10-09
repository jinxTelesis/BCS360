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
