
/*CREATE TABLE tblLocation -- first
(
StoreID int NOT NULL IDENTITY PRIMARY KEY,
StoreName varchar(20) NOT NULL,
StoreCity varchar(25) NOT NULL,
StoreState varchar(2) NOT NULL,
StoreZip int NOT NULL,
StoreManager varchar(30) NOT NULL,
StoreEmail varchar(60) NOT NULL,
LastYearSales int NULL
);
*/
SET IDENTITY_INSERT tblLocation ON;
INSERT INTO tblLocation(StoreID,StoreName,StoreCity,StoreState,StoreZip,StoreManager,StoreEmail,LastYearSales) VALUES
(1,'bridgewater','melville','NY',11747,'Paul Biggy','freeMerchnHam@hotmail.com',100000),
(2,'Manafort','huntington','NY',11283,'Richy small','noFreeMerch@gmail.com',1720000),
(3,'Ron Paul','hubardston','MA',11111,'Big dipper','liveinitup@nowhere.com',1000203),
(4,'big tex','patchogue','TN',11011,'Joe Dirt','whatwouldyoudo@nowhere.com',1230000),
(5,'Beast Nation','patchogue','NY',11800,'Chaos','loveconquors@nowhere.com',15000000),
(6,'Manafort2','huntington','NY',99999,'Fred Durst', 'ohnoyoudidnt@nowhere.com',1000);
SET IDENTITY_INSERT tblLocation OFF;
/*
CREATE TABLE tblVendor -- second
(
VendorID int NOT NULL PRIMARY KEY,
CraftsManFName varchar(30) NOT NULL,
CraftsManLName varchar(30) NOT NULL,
VendorManagerContact varchar(50) NULL,
VendorEmail varchar(60) NOT NULL,
VendorCountry varchar(20) NOT NULL,
VendorPrimaryLanguage varchar(2) NOT NULL, -- code
VendorRating varchar(1) NULL-- code
);
*/
SET IDENTITY_INSERT tblVendor ON; -- table needs to be recreated because IDENTITY was not on
INSERT INTO tblVendor(VendorID,CraftsManFName,CraftsManLName,VendorManagerContact,VendorEmail,VendorCountry,VendorPrimaryLanguage,VendorRating) VALUES
(1, 'bob','timmy','Frank the tank','NO@nowhere.com','France','Fn','a'),
(2, 'jimmy','p','BIG Al','nowthatsmusic@nowhere.com','Spain','sp','a'),
(3, 'Tex','mex','Even Bigger AL','playsallnight@nowhere.com','US','En','b'),
(4, 'Shelly','johnston','UNKNOWN','willsmith@nowhere.com','US','En','b'),
(5, 'Mary','Early','George K','blankcds@gmail.com','France','Fn','a'),
(6, 'Mary','Williams','Ted Talks','tedtalks@gmail.com','US','En','a'),
(7, 'Ricky','Bobby','Jed Powers','rockEm@gmail.com','Togo','De','a'),
(8, 'bubbles','bubs','The man','lettemwalk@gmail.com','Italy','It','c'),
(9, 'Devin','Sangreen','Gary Powers','cantdance@gmail.com','US','En','a'),
(10,'Fred', 'Cougar','Luke Bigtalk','whenintexas@nowhere.com','US','En','a'),
(11,'Buck','Elise','Samantha Wok','Friedchick@nowhere.com','France','Fn','a'),
(12,'Ted','Ned','Grimly Gragus','youcallthata@nowhere.com','Spain','sp','b'),
(13,'Debbie','Greenly','Leona Santos','redrum@nowhere.com','Poland','Po','c'),
(14,'Zed','Omega','William May','takesonetoknowone@nowhere.com','afghanistan','aF','d'),
(15,'Khalid','Jupes','QT PIE','leagueofhisown@nowhere.com','US','En','c');
SET IDENTITY_INSERT tblVendor OFF;
/*
CREATE TABLE tblInstructor -- third
(
InstructorID int NOT NULL PRIMARY KEY,
InstructorFName varchar(30) NOT NULL,
InstructorLName varchar(30) NOT NULL,
InstructorRate float default 10.00 NOT NULL,
InstructorRating varchar(1) NULL
);
*/
SET IDENTITY_INSERT tblInstructor ON;
INSERT INTO tblInstructor(InstructorID,InstructorFName,InstructorLName,InstructorRate,InstructorRating) VALUES
(1, 'Tim','Cruise',12.00,'a'),
(2, 'Jim','Carey',13.00,'b'),
(3, 'Bork','Star',15.00,'a'),
(4, 'Rudy','Ridgeworth',10.00,'c'),
(5, 'Joey','Carey',18.00,'a'),
(6, 'Tom','Mercy',15.00,'b'),
(7, 'Larry','Windsor',15.00,'b'),
(8, 'Bob','Barker',22,'c'),
(9, 'Mary','Wok',17.00,'a'),
(10, 'Gary','Ludgate',20.00,'a'),
(11, 'Biff','Irondoor',15.00,'b'),
(12, 'Adam','Toast',12.00,'c'),
(13, 'Jimmy','p',12.00,'a'),
(14, 'Holly','Wilk',15.50,'a'),
(15, 'Ray','White',12.00,'a');
SET IDENTITY_INSERT tblInstructor OFF;
/*
CREATE TABLE tblProducts -- fourth
(
ProductID int NOT NULL IDENTITY PRIMARY KEY,
Cost float NOT NULL,
SpecialTax float NULL,
ProductMake varchar(15) NULL,
ProductName varchar(15) NOT NULL,
ProductColor varchar(1) NULL,
ProductSize varchar(3) NULL,
ProductUnique varchar(1) NOT NULL,
ProductRentalRate float NULL,
ProductVendor int NOT NULL REFERENCES tblVendor(VendorID) -- 
);*/

SET IDENTITY_INSERT tblProducts ON;
INSERT INTO tblProducts(ProductID,Cost,SpecialTax,ProductMake,ProductName,ProductColor,ProductSize,ProductUnique,ProductRentalRate,ProductVendor) VALUES
(1,5000.0,0.0,'Keystone','guitar','a','arc',0,10.5,1),
(2,5045.0,0.0,'Ringer','guitar','b','arc',0,12,1),
(3,300.0,0.0,'Munser','guitar','a','arc',0,5.75,1),
(4,850,0.3,'keystoneXL','basepro','r','arb',0,15.00,2),
(5,800,0.0,'Brown Stone','Drums','r','bbb',0,20.00,3),
(6,100,0.0,'Learner pro','Drums','r','bbb',1,5.00,3),
(7,2200.00,0.0,'Brown Stone','Drums','b','bbb',0,60.00,3),
(8,15000,0.0,'Brown Stone','Drums ','w','bbb',0,0.00,3),
(9,800,0.0,'Ringer','Drums','w','bbb',1,12.00,1),
(10,3800,0.0,'Snake Pit','Obo','a','qaq',1,50,4),
(11,850,0.0,'Mellow','Guitar','b','arc',0,20.00,4),
(12,1200,0.0,'Mellow x','Electric Guitar','w','ard',1,28.00,4),
(13,500,0.0,'Mellow x','Drums','w','bbb',0,28.00,5),
(14,520,0.0,'Mellow x','Snare Drums','w','bbb',0,24.00,5),
(15,500,0.0,'Ted D','Banjo','w','arb',0,14.00,11);
SET IDENTITY_INSERT tblProducts OFF;
/*
CREATE TABLE tblCustAddress
(
AddressId int NOT NULL IDENTITY PRIMARY KEY,
CustomerID int NOT NULL, -- waiting on ref this would be circular no?
StreetNum float NOT NULL,
StreetName varchar(20) NOT NULL,
City varchar(25) NOT NULL,
stateA varchar(2) NULL,
Zip int NOT NULL,
-- Country varchar(3) NOT NULL, -- code
AddressType varchar(1) NOT NULL   
);*/
SET IDENTITY_INSERT tblCustAddress ON; -- need to rewrite stateA bit
INSERT INTO tblCustAddress(AddressId,StreetNum,StreetName,City,state,Zip,AddressType) VALUES
(1,10.0,'Cherry St','Hopkinton','MA',11111,'a'),
(2,15,'Birch St','Windsor','MA',12151,'b'),
(3,41.0,'West St','Melville','NY',15378,'b'),
(4,15.0,'East St','Hopkinton','WA',98172,'a'),
(5,21.0,'West st','franklin','NY',98121,'a'),
(6,63.0,'Mercy Ave','Tomkins','NY',12381,'a'),
(7,65.0,'Red St','Meredith','NY',77777,'b'),
(8,73.0,'Baker St','Middletown','NY',78212,'c'),
(9,108,'Rose St','Franklin','NY',98121,'c'),
(10,4212.0,'Lakeview Rd','Walton','MA',44531,'d'),
(11,4531,'Lakeview Rd','Walton','MA',44531,'d'),
(12,28.0,'Fire Lake Rd','Worcester','MA',17711,'a'),
(13,10.0,'Green Street','London','TN',56111,'b'),
(14,4782.5,'Longview Rd','Manchester','GA',11122,'a'),
(15,110.0,'Eastend','Patchogue','FL',91313,'a');
SET IDENTITY_INSERT tblCustAddress OFF;
/*
CREATE TABLE tblCustomers
(
CustomerID int NOT NULL IDENTITY PRIMARY KEY,
FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
PrimaryContactNum varchar(14) NOT NULL,
Email varchar(60) NOT NULL,
CustomerType varchar(1) NOT NULL,
FirstOrder smallDateTime NULL,
BillingAddress int REFERENCES tblCustAddress(AddressId),
ShippingAddress int REFERENCES tblCustAddress(AddressId)
);*/
SET IDENTITY_INSERT tblCustomers ON;
INSERT INTO tblCustomers(CustomerID,FirstName,LastName,PrimaryContactNum,Email,CustomerType,FirstOrder,BillingAddress,ShippingAddress) VALUES
(1,'Dre','Mac','634-123-5631','boost@gmail.com','a','1955-12-13 12:43:10',1,1),
(2,'Andrew','Laflame','634-173-5131','fastcars@gmail.com','b','1995-12-13 12:43:10',2,2),
(3,'Samantha','Powers','134-123-5131','Smama@gmail.com','b','2015-12-13 12:13:11',3,3),
(4,'Ranye','Turks','734-111-5131','Gillmaster@gmail.com','a','2011-12-13 12:13:11',4,4),
(5,'William','Pegg','134-191-5131','Lighting@gmail.com','a','2012-12-13 12:13:17',5,5),
(6,'Peach','Legi','731-291-1131','SnackCandy@gmail.com','b','2015-12-14 12:16:27',6,6),
(7,'Manford','Smithhouse','131-291-2131','BigFry@gmail.com','a','2010-12-14 12:16:27',7,7),
(8,'Fred','Winehouse','811-291-2131','LostinSPace@gmail.com','b','2011-11-12 11:17:27',8,8),
(9,'Floyd','Willy','811-291-2131','housefly@gmail.com','a','2012-11-12 10:17:27',9,9),
(10,'Chevy','VanPickup','990-291-2731','donpaymytaxes@gmail.com','b','2014-11-12 9:09:27',10,10),
(11,'Red','Green','190-291-2731','smufnsurf@gmail.com','a','2015-01-13 11:19:27',11,11),
(12,'Sarah','Summers','120-201-2031','flowerlove@gmail.com','b','2013-01-13 11:21:27',12,12),
(13,'Franklin','Summers','121-201-2031','xmmsarggs2@gmail.com','b','2013-01-13 11:21:27',12,12),
(14,'Celeste','Munzer','929-901-9031','feelinggreat@gmail.com','a','2014-02-17 11:21:22',13,13),
(15,'David','Waltforth','829-101-9031','stateafair@gmail.com','b','2015-03-19 11:21:22',14,14);

SET IDENTITY_INSERT tblCustomers OFF;
/*
CREATE TABLE tblServiceOrder
(
ServiceOrdID int NOT NULL IDENTITY PRIMARY KEY,
ServiceStateDate Date,
ServiceEndDate Date,
CustomerID int NOT NULL REFERENCES tblCustomers(CustomerID), -- fk
InstructIDforServiceRate int NOT NULL REFERENCES tblInstructor(InstructorID), -- fk
);*/
SET IDENTITY_INSERT tblServiceOrder ON;
INSERT INTO tblServiceOrder(ServiceOrdID,ServiceStateDate,ServiceEndDate,CustomerID,instrucServiceRate) VALUES
(1,'2015-11-14','2017-10-25',1,7),
(2,'2013-08-11','2016-11-25',2,4),
(3,'2014-07-07','2015-12-22',3,4),
(4,'2011-01-02','2017-08-01',4,1),
(5,'2012-11-02','2016-08-11',5,2),
(6,'2011-01-02','2013-11-11',6,7),
(7,'2012-11-02','2015-08-01',6,2),
(8,'2013-01-02','2017-06-06',6,5),
(9,'2013-11-12','2016-06-06',7,5),
(10,'2013-08-11','2018-06-06',8,3),
(11,'2012-09-12','2017-04-04',9,6),
(12,'2012-10-11','2016-06-06',10,7),
(13,'2013-11-12','2016-04-04',11,7),
(14,'2014-02-03','2015-08-14',12,4),
(15,'2011-08-07','2015-07-14',12,4);
SET IDENTITY_INSERT tblServiceOrder OFF;
/*
CREATE TABLE tblRental
(
RentalID int NOT NULL IDENTITY PRIMARY KEY,
StartDate date,
EndDate date,
ProductIDRentalRate int REFERENCES tblProducts(ProductID), -- fk
CustomerID int REFERENCES tblCustomers(CustomerID), -- fk
);*/
SET IDENTITY_INSERT tblRental ON;
INSERT INTO tblRental(RentalID,StartDate,EndDate,ProductIDRentalRate,CustomerID)VALUES
(1,'2015-11-14','2017-10-25',2,7),
(2,'2013-08-11','2016-11-25',2,4),
(3,'2012-07-07','2015-12-22',3,4),
(4,'2011-01-02','2017-08-01',1,1),
(5,'2011-11-02','2016-08-11',2,2),
(6,'2011-01-02','2013-11-11',1,7),
(7,'2012-11-02','2015-08-01',1,2),
(8,'2011-01-02','2017-06-06',1,5),
(9,'2013-11-12','2016-06-06',7,5),
(10,'2011-08-11','2017-06-06',8,3),
(11,'2012-09-12','2017-04-04',9,6),
(12,'2013-10-11','2016-06-06',1,7),
(13,'2013-11-12','2014-04-04',2,7),
(14,'2014-02-03','2015-08-14',3,4),
(15,'2011-08-07','2014-07-14',4,4);
SET IDENTITY_INSERT tblRental OFF;
/*
CREATE TABLE tblOrder
(
OrderID int NOT NULL IDENTITY PRIMARY KEY,
CustomerID int REFERENCES tblCustomers(CustomerID),
ShipTo int REFERENCES tblCustAddress(AddressId), -- FK
BillTo int REFERENCES tblCustAddress(AddressId), -- FK
Product int REFERENCES tblProducts(ProductID), -- FK
Paid bit NOT NULL,
DateSent Date NULL,
Quantity int NOT NULL
);*/
SET IDENTITY_INSERT tblOrder ON;
INSERT INTO tblOrder(OrderID,CustomerID,ShipTo,BillTo,Product,Paid,DateSent,Quantity) VALUES
(1,1,1,1,7,1,'2017-10-25',2),
(2,1,1,1,8,1,'2017-11-25',1),
(3,2,3,3,2,0,'2018-01-01',1),
(4,3,4,4,1,1,'2018-02-01',1),
(5,4,5,5,3,0,'2018-03-11',1),
(6,5,6,6,1,1,'2018-04-12',1),
(7,6,7,7,3,1,'2018-05-01',1),
(8,7,8,8,5,0,'2018-06-04',1),
(9,8,9,9,6,0,'2018-07-03',1),
(10,9,10,10,2,1,'2018-10-25',1),
(11,10,11,11,10,0,'2017-10-25',1),
(12,11,12,12,7,0,'2017-08-15',1),
(13,12,13,13,9,1,'2017-01-21',1),
(14,13,14,14,8,1,'2017-02-22',1),
(15,14,15,15,7,1,'2017-05-25',1);

SET IDENTITY_INSERT tblOrder OFF;

CREATE TABLE tblOrderItems --Cost float NOT NULL,
(
ItemID int NOT NULL IDENTITY PRIMARY KEY,
ItemPrice int NOT NULL,
DiscountAmount int NOT NULL,
Quantity int NOT NULL,
);

