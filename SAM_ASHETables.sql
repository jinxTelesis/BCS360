SET IDENTITY_INSERT tblLocation ON;
INSERT INTO tblLocation(StoreID,StoreName,StoreCity,StoreState,StoreZip,StoreManager,StoreEmail,LastYearSales) VALUES
(1,'bridgewater','melville','NY',11747,'Paul Biggy','freeMerchnHam@hotmail.com',100000),
(2,'Manafort','huntington','NY',11283,'Richy small','noFreeMerch@gmail.com',1720000),
(3,'Ron Paul','hubardston','MA',11111,'Big dipper','liveinitup@nowhere.com',1000203),
(4,'big tex','patchogue','TN',11011,'Joe Dirt','whatwouldyoudo@nowhere.com',1230000),
(5,'Beast Nation','patchogue','NY',11800,'Chaos','loveconquors@nowhere.com',15000000),
(6,'Manafort2','huntington','NY',99999,'Fred Durst', 'ohnoyoudidnt@nowhere.com',1000);
SET IDENTITY_INSERT tblLocation OFF;

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

SET IDENTITY_INSERT tblCategories2 ON;

INSERT INTO tblCategories2(CategoryID, CategoryName) VALUES
(1, 'Guitars'),
(2, 'Basses'),
(3, 'Drums'), 
(4, 'Keyboards');

SET IDENTITY_INSERT tblCategories2 OFF;

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

SET IDENTITY_INSERT tblProducts ON; -- need to add discount percent
INSERT INTO tblProducts(ProductID, ProductName,Cost,DiscountPercent,SpecialTax,ProductMake,ProductColor,ProductSize,ProductUnique,ProductRentalRate,ProductVendor) VALUES
(1,'Pro vas',5000.0,   5,  0.0,'Keystone','a','arc','f',10.5,1),
(2,'Dead',5045.0,5,0.0,'Ringer','b','arc','f',12,1),
(3,'Mun special',300.0,10,0.0,'Munser','a','arc','f',5.75,1),
(4,'Big game',850,5,0.3,'keystoneXL','r','arb','f',15.00,2),
(5,'Advanced',800,10,0.0,'Brown Stone','r','bbb','f',20.00,3),
(6,'Basic',100,10,0.0,'Learner pro','r','bbb','f',5.00,3),
(7,'Key',2200.00,10,0.0,'Brown Stone','b','bbb','f',60.00,3),
(8,'Brink',15000,10,0.0,'Brown Stone','w','bbb','t',0.00,3),
(9,'Blue fly',800,10,0.0,'Ringer','w','bbb','f',12.00,1),
(10,'Fang',3800,10,0.0,'Snake Pit','a','qaq','f',50,4),
(11,'Low ride',850,10,0.0,'Mellow','b','arc','f',20.00,4),
(12,'Tusser',1200,5,0.0,'Mellow x','w','ard','f',28.00,4),
(13,'Tusser t',500,1,0.0,'Mellow x','w','bbb','f',28.00,5),
(14,'Charlie',520,5,0.0,'Mellow x','w','bbb','f',24.00,5),
(15,'Eigth',500,5,0.0,'Ted D','w','arb','f',14.00,11);
SET IDENTITY_INSERT tblProducts OFF;


SET IDENTITY_INSERT tblCustAddress ON; -- need to rewrite stateA bit
INSERT INTO tblCustAddress(AddressId,CustomerID,StreetNum,StreetName,City,stateA,Zip,AddressType) VALUES
(1,1,10.0,'Cherry St','Hopkinton','MA',11111,'a'),
(2,2,15,'Birch St','Windsor','MA',12151,'b'),
(3,3,41.0,'West St','Melville','NY',15378,'b'),
(4,4,15.0,'East St','Hopkinton','WA',98172,'a'),
(5,5,21.0,'West st','franklin','NY',98121,'a'),
(6,5,63.0,'Mercy Ave','Tomkins','NY',12381,'a'),
(7,6,65.0,'Red St','Meredith','NY',77777,'b'),
(8,7,73.0,'Baker St','Middletown','NY',78212,'c'),
(9,8,108,'Rose St','Franklin','NY',98121,'c'),
(10,9,4212.0,'Lakeview Rd','Walton','MA',44531,'d'),
(11,10,4531,'Lakeview Rd','Walton','MA',44531,'d'),
(12,11,28.0,'Fire Lake Rd','Worcester','MA',17711,'a'),
(13,12,10.0,'Green Street','London','TN',56111,'b'),
(14,13,4782.5,'Longview Rd','Manchester','GA',11122,'a'),
(15,14,110.0,'Eastend','Patchogue','FL',91313,'a');
SET IDENTITY_INSERT tblCustAddress OFF;

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

SET IDENTITY_INSERT tblServiceOrder ON;
INSERT INTO tblServiceOrder(ServiceOrdID,ServiceStateDate,ServiceEndDate,CustomerID,InstructIDforServiceRate) VALUES
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

SET IDENTITY_INSERT tblOrderItems ON;
INSERT INTO tblOrderItems(ItemID, ItemPrice, DiscountAmount, Quantity)VALUES
(1,50,10,1),
(2,150,20,1),
(3,25,30,1),
(4,500,0,3),
(5,300,5,2),
(6,100,10,2),
(7,125,10,1),
(8,250,10,1),
(9,300,15,1),
(10,150,15,5),
(11,175,15,4),
(12,200,15,3),
(13,215,15,1),
(14,300,10,1),
(15,15,10,1);

SET IDENTITY_INSERT tblOrderItems OFF;

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

SET IDENTITY_INSERT tblOrder ON;
INSERT INTO tblOrder(OrderID,CustomerID,ShipTo,BillTo,Product,Paid,DateSent) VALUES
(1,1,1,1,1,'2017-10-25'),
(2,1,1,1,1,'2017-11-25'),
(3,2,3,3,0,'2018-01-01'),
(4,3,4,4,1,'2018-02-01'),
(5,4,5,5,0,'2018-03-11'),
(6,5,6,6,1,'2018-04-12'),
(7,6,7,7,1,'2018-05-01'),
(8,7,8,8,0,'2018-06-04'),
(9,8,9,9,0,'2018-07-03'),
(10,9,10,10,1,'2018-10-25'),
(11,10,11,11,0,'2017-10-25'),
(12,11,12,12,0,'2017-08-15'),
(13,12,13,13,1,'2017-01-21'),
(14,13,14,14,1,'2017-02-22'),
(15,14,15,15,1,'2017-05-25');

SET IDENTITY_INSERT tblOrder OFF;
