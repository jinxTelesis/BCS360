

/****** Object:  Table ActiveInvoices     ******/
CREATE TABLE ActiveInvoices(
	InvoiceID int IDENTITY(1,1) NOT NULL,
	VendorID int NOT NULL,
	InvoiceNumber varchar(50) NOT NULL,
	InvoiceDate smalldatetime NOT NULL,
	InvoiceTotal money NOT NULL,
	PaymentTotal money NOT NULL,
	CreditTotal money NOT NULL,
	TermsID int NOT NULL,
	InvoiceDueDate smalldatetime NOT NULL,
	PaymentDate smalldatetime NULL
)


/****** Object:  Table APFlat     ******/
CREATE TABLE APFlat(
	VendorName varchar(50) NOT NULL,
	InvoiceNumber varchar(50) NOT NULL,
	ItemDescription1 varchar(100) NULL,
	ItemDescription2 varchar(100) NULL,
	ItemDescription3 varchar(100) NULL,
	ItemDescription4 varchar(100) NULL
)


/****** Object:  Table Customers     ******/
CREATE TABLE Customers(
	CustID int IDENTITY(1,1) NOT NULL,
	CustomerLast nvarchar(30) NULL,
	CustomerFirst nvarchar(30) NULL,
	CustAddr nvarchar(60) NULL,
	CustCity nvarchar(15) NULL,
	CustState nvarchar(15) NULL,
	CustZip nvarchar(10) NULL,
	CustPhone nvarchar(24) NULL,
 CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED(
	CustID ASC
 )
)

/****** Object:  Table DateSample     ******/
CREATE TABLE DateSample(
	ID int IDENTITY(1,1) NOT NULL,
	StartDate datetime NULL
)

/****** Object:  Table Departments     ******/
CREATE TABLE Departments(
	DeptNo int IDENTITY(1,1) NOT NULL,
	DeptName varchar(50) NOT NULL,
 CONSTRAINT PK_Departments PRIMARY KEY CLUSTERED(
	DeptNo ASC
 )
)

/****** Object:  Table Employees     ******/
CREATE TABLE Employees(
	EmployeeID int IDENTITY(1,1) NOT NULL,
	LastName varchar(35) NOT NULL,
	FirstName varchar(35) NOT NULL,
	DeptNo int NOT NULL,
	ManagerID int NULL
)

/****** Object:  Table EmployeesOld     ******/
CREATE TABLE EmployeesOld(
	EmployeeID int IDENTITY(1,1) NOT NULL,
	LastName varchar(35) NOT NULL,
	FirstName varchar(35) NOT NULL,
	DeptNo int NOT NULL,
 CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED(
	EmployeeID ASC
 )
)

/****** Object:  Table EmployeesTest    ******/
CREATE TABLE EmployeesTest(
	EmployeeID int IDENTITY(1,1) NOT NULL,
	LastName varchar(35) NOT NULL,
	FirstName varchar(35) NOT NULL,
	DeptNo int NOT NULL,
	ManagerID int NULL
)

/****** Object:  Table Investors     ******/
CREATE TABLE Investors(
	InvestorID int IDENTITY(1,1) NOT NULL,
	LastName varchar(50) NULL,
	FirstName varchar(50) NULL,
	Address varchar(50) NULL,
	City varchar(50) NULL,
	State char(2) NULL,
	ZipCode char(10) NULL,
	Phone char(20) NULL,
	Investments money NULL,
	NetGain money NULL,
 CONSTRAINT PK_Investors PRIMARY KEY CLUSTERED(
	InvestorID ASC
 )
)


/****** Object:  Table Invoices     ******/
CREATE TABLE Invoices(
	InvoiceID int NOT NULL,
	InvoiceNumber int NULL,
	InvoiceTotal smallmoney NULL
)


/****** Object:  Table NullSample     ******/
CREATE TABLE NullSample(
	InvoiceID int IDENTITY(1,1) NOT NULL,
	InvoiceTotal money NULL
)

/****** Object:  Table PaidInvoices    ******/
CREATE TABLE PaidInvoices(
	InvoiceID int IDENTITY(1,1) NOT NULL,
	VendorID int NOT NULL,
	InvoiceNumber varchar(50) NOT NULL,
	InvoiceDate smalldatetime NOT NULL,
	InvoiceTotal money NOT NULL,
	PaymentTotal money NOT NULL,
	CreditTotal money NOT NULL,
	TermsID int NOT NULL,
	InvoiceDueDate smalldatetime NOT NULL,
	PaymentDate smalldatetime NULL
)

/****** Object:  Table Projects     ******/
CREATE TABLE Projects(
	ProjectNo char(5) NOT NULL,
	EmployeeID int NOT NULL
)

/****** Object:  Table RealSample     ******/
CREATE TABLE RealSample(
	ID int IDENTITY(1,1) NOT NULL,
	R float NULL
)

/****** Object:  Table SalesReps     ******/
CREATE TABLE SalesReps(
	RepID int IDENTITY(1,1) NOT NULL,
	RepFirstName varchar(50) NOT NULL,
	RepLastName varchar(50) NOT NULL,
 CONSTRAINT PK_SalesReps PRIMARY KEY CLUSTERED(
	RepID ASC
 )
)

/****** Object:  Table SalesTotals    ******/
CREATE TABLE SalesTotals(
	RepID int NOT NULL,
	SalesYear char(4) NOT NULL,
	SalesTotal money NOT NULL,
 CONSTRAINT PK_SalesTotals PRIMARY KEY CLUSTERED(
	RepID ASC,
	SalesYear ASC
 )
)

/****** Object:  Table Sample     ******/
CREATE TABLE Sample(
	ID int IDENTITY(1,1) NOT NULL,
	Number int NULL,
	Color char(10) NOT NULL
)

/****** Object:  Table StringSample     ******/
CREATE TABLE StringSample(
	ID char(3) NULL,
	Name varchar(25) NULL,
	AltID char(3) NULL
)

/****** Object:  Table Vendors     ******/
CREATE TABLE Vendors(
	VendorID int IDENTITY(1,1) NOT NULL,
	VendorName nvarchar(50) NOT NULL,
	VendorAddress1 nvarchar(50) NULL,
	VendorAddress2 nvarchar(50) NULL,
	VendorCity nvarchar(50) NOT NULL,
	VendorState nchar(2) NOT NULL,
	VendorZipCode nvarchar(10) NOT NULL,
	VendorContactLName nvarchar(35) NULL,
	VendorContactFName nvarchar(35) NULL,
	VendorPhone nvarchar(50) NULL,
	TermsID int NOT NULL,
	AccountNo int NOT NULL,
	LastTranDate smalldatetime NULL,
	YTDPurchases money NULL,
	YTDReturns money NULL,
	LastYTDPurchases money NULL,
	LastYTDReturns money NULL,
 CONSTRAINT PK_Vendors PRIMARY KEY CLUSTERED(
	VendorID ASC
 )
)

SET IDENTITY_INSERT ActiveInvoices ON 
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES
(89, 72, '39104', CAST('2016-03-10 00:00:00' AS SmallDateTime), 85.3100, 0.0000, 0.0000, 3, CAST('2016-04-09 00:00:00' AS SmallDateTime), NULL),
(94, 123, '963253264', CAST('2016-03-18 00:00:00' AS SmallDateTime), 52.2500, 0.0000, 0.0000, 3, CAST('2016-04-17 00:00:00' AS SmallDateTime), NULL),
(98, 83, '31361833', CAST('2016-03-21 00:00:00' AS SmallDateTime), 579.4200, 0.0000, 0.0000, 2, CAST('2016-04-10 00:00:00' AS SmallDateTime), NULL),
(99, 123, '263253268', CAST('2016-03-21 00:00:00' AS SmallDateTime), 59.9700, 0.0000, 0.0000, 3, CAST('2016-04-20 00:00:00' AS SmallDateTime), NULL),
(100, 123, '263253270', CAST('2016-03-22 00:00:00' AS SmallDateTime), 67.9200, 0.0000, 0.0000, 3, CAST('2016-04-21 00:00:00' AS SmallDateTime), NULL),
(101, 123, '263253273', CAST('2016-03-22 00:00:00' AS SmallDateTime), 30.7500, 0.0000, 0.0000, 3, CAST('2016-04-21 00:00:00' AS SmallDateTime), NULL),
(102, 110, 'P-0608', CAST('2016-03-23 00:00:00' AS SmallDateTime), 20551.1800, 0.0000, 1200.0000, 3, CAST('2016-04-22 00:00:00' AS SmallDateTime), NULL),
(105, 106, '9982771', CAST('2016-03-24 00:00:00' AS SmallDateTime), 503.2000, 0.0000, 0.0000, 3, CAST('2016-04-23 00:00:00' AS SmallDateTime), NULL),
(110, 80, '134116', CAST('2016-03-28 00:00:00' AS SmallDateTime), 90.3600, 0.0000, 0.0000, 2, CAST('2016-04-17 00:00:00' AS SmallDateTime), NULL),
(112, 110, '0-2436', CAST('2016-03-31 00:00:00' AS SmallDateTime), 10976.0600, 0.0000, 0.0000, 3, CAST('2016-04-30 00:00:00' AS SmallDateTime), NULL),
(113, 37, '547480102', CAST('2016-04-01 00:00:00' AS SmallDateTime), 224.0000, 0.0000, 0.0000, 3, CAST('2016-04-30 00:00:00' AS SmallDateTime), NULL)
SET IDENTITY_INSERT ActiveInvoices OFF

INSERT APFlat (VendorName, InvoiceNumber, ItemDescription1, ItemDescription2, ItemDescription3, ItemDescription4) VALUES
('Wells Fargo Bank', '112897', 'DiCicco''s', 'Kinko''s', 'Office Max', 'Publishers Marketing'),
('Zylka Design', '97/522', 'MC Bouncebacks', 'SCMD Flyer', NULL, NULL),
('Zylka Design', '97/553B', 'Card revision', NULL, NULL, NULL)

SET IDENTITY_INSERT Customers ON 
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES 
(1, 'Anders', 'Maria', '345 Winchell Pl', 'Anderson', 'IN', '46014', '(765) 555-7878'),
(2, 'Trujillo', 'Ana', '1298 E Smathers St', 'Benton', 'AR', '72018', '(501) 555-7733'),
(3, 'Moreno', 'Antonio', '6925 N Parkland Ave', 'Puyallup', 'WA', '98373', '(253) 555-8332'),
(4, 'Hardy', 'Thomas', '83 d''Urberville Ln', 'Casterbridge', 'GA', '31209', '(478) 555-1139'),
(5, 'Berglund', 'Christina', '22717 E 73rd Ave', 'Dubuque', 'IA', '52004', '(319) 555-1139'),
(6, 'Moos', 'Hanna', '1778 N Bovine Ave', 'Peoria', 'IL', '61638', '(309) 555-8755'),
(7, 'Citeaux', 'Fred', '1234 Main St', 'Normal', 'IL', '61761', '(309) 555-1914'),
(8, 'Summer', 'Martin', '1877 Ete Ct', 'Frogtown', 'LA', '70563', '(337) 555-9441'),
(9, 'Lebihan', 'Laurence', '717 E Michigan Ave', 'Chicago', 'IL', '60611', '(312) 555-9441'),
(10, 'Lincoln', 'Elizabeth', '4562 Rt 78 E', 'Vancouver', 'WA', '98684', '(360) 555-2680'),
(32, 'Snyder', 'Howard', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', '(503) 555-7555'),
(36, 'Latimer', 'Yoshi', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', '(503) 555-6874'),
(43, 'Steel', 'John', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', '(509) 555-7969'),
(45, 'Yorres', 'Jaime', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', '(415) 555-5938'),
(48, 'Wilson', 'Fran', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', '(503) 555-9573'),
(55, 'Phillips', 'Rene', '2743 Bering St.', 'Anchorage', 'AK', '99508', '(907) 555-7584'),
(65, 'Wilson', 'Paula', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', '(505) 555-5939'),
(71, 'Pavarotti', 'Jose', '187 Suffolk Ln.', 'Boise', 'ID', '83720', '(208) 555-8097'),
(75, 'Braunschweiger', 'Art', 'P.O. Box 555', 'Lander', 'WY', '82520', '(307) 555-4680'),
(77, 'Nixon', 'Liz', '89 Jefferson Way Suite 2', 'Providence', 'RI', '02909', '(401) 555-3612'),
(78, 'Wong', 'Liu', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', '(406) 555-5834'),
(82, 'Nagy', 'Helvetius', '722 DaVinci Blvd.', 'Concord', 'MA', '01742', '(351) 555-1219'),
(89, 'Jablonski', 'Karl', '305 - 14th Ave. S. Suite 3B', 'Seattle', 'WA', '98128', '(206) 555-4112'),
(92, 'Chelan', 'Donna', '2299 E Baylor Dr', 'Dallas', 'TX', '75224', '(469) 555-8828')
SET IDENTITY_INSERT Customers OFF

SET IDENTITY_INSERT DateSample ON 
INSERT DateSample (ID, StartDate) VALUES
(1, CAST(0x0000762E00000000 AS DateTime)),
(2, CAST(0x000092B300000000 AS DateTime)),
(3, CAST(0x0000995D00000000 AS DateTime)),
(4, CAST(0x00009B4300A4CB80 AS DateTime)),
(5, CAST(0x00009F8A00E65057 AS DateTime)),
(6, CAST(0x00009F8E0094FAAC AS DateTime))
SET IDENTITY_INSERT DateSample OFF

SET IDENTITY_INSERT Departments ON 
INSERT Departments (DeptNo, DeptName) VALUES
(1, 'Accounting'),
(2, 'Payroll'),
(3, 'Operations'),
(4, 'Personnel'),
(5, 'Maintenance')
SET IDENTITY_INSERT Departments OFF

SET IDENTITY_INSERT Employees ON 
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES
(1, 'Smith', 'Cindy', 2, NULL),
(2, 'Jones', 'Elmer', 4, 1),
(3, 'Simonian', 'Ralph', 2, 2),
(4, 'Hernandez', 'Olivia', 1, 2),
(5, 'Aaronsen', 'Robert', 2, 3),
(6, 'Watson', 'Denise', 6, 3),
(7, 'Hardy', 'Thomas', 5, 2),
(8, 'O''Leary', 'Rhea', 4, 2),
(9, 'Locario', 'Paulo', 6, 1)
SET IDENTITY_INSERT Employees OFF

SET IDENTITY_INSERT EmployeesOld ON 
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES
(1, 'Smith', 'Cindy', 2),
(2, 'Jones', 'Elmer', 4),
(3, 'Simonian', 'Ralph', 2),
(4, 'Hernandez', 'Olivia', 1),
(5, 'Aaronsen', 'Robert', 2),
(6, 'Watson', 'Denise', 6),
(7, 'Hardy', 'Thomas', 5),
(8, 'O''Leary', 'Rhea', 4),
(9, 'Locario', 'Paulo', 6)
SET IDENTITY_INSERT EmployeesOld OFF

SET IDENTITY_INSERT EmployeesTest ON 
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES
(1, 'Smith', 'Cindy', 2, NULL),
(2, 'Jones', 'Elmer', 4, 1),
(3, 'Simonian', 'Ralph', 2, 2),
(4, 'Hernandez', 'Olivia', 1, 9),
(5, 'Aaronsen', 'Robert', 2, 4),
(6, 'Watson', 'Denise', 6, 8),
(7, 'Hardy', 'Thomas', 5, 2),
(8, 'O''Leary', 'Rhea', 4, 9),
(9, 'Locario', 'Paulo', 6, 1)
SET IDENTITY_INSERT EmployeesTest OFF

SET IDENTITY_INSERT Investors ON 
INSERT Investors (InvestorID, LastName, FirstName, Address, City, State, ZipCode, Phone, Investments, NetGain) VALUES
(1, 'Anders', 'Maria', '345 Winchell Pl', 'Anderson', 'IN', '46014     ', '(765) 555-7878      ', 15000.0000, 1242.5700),
(2, 'Trujilo', 'Ana', '1298 E Smathers St.', 'Benton', 'AR', '72018     ', '(510) 555-7733      ', 43500.0000, 8497.4400),
(3, 'Moreno', 'Antonio', '6925 N Parkland Ave.', 'Puyallup', 'WA', '98373     ', '(253) 555-8332      ', 22900.0000, 2338.8700),
(4, 'Hardy', 'Thomas', '83 d''Urberville Ln.', 'Casterbridge', 'GA', '31209     ', '(478) 555-1139      ', 5000.0000, -245.6900),
(5, 'Berglund', 'Christina', '22717 E 73rd Ave.', 'Dubuque', 'IA', '52004     ', '(319) 555-1139      ', 11750.0000, 865.7700)
SET IDENTITY_INSERT Investors OFF

INSERT Invoices (InvoiceID, InvoiceNumber, InvoiceTotal) VALUES
(1, 8937, 50.0000),
(2, 3662, 100.0000),
(3, NULL, NULL),
(4, 4553, 250.0000),
(5, 8937, 0.0000)

SET IDENTITY_INSERT NullSample ON 
INSERT NullSample (InvoiceID, InvoiceTotal) VALUES
(1, 125.0000),
(2, 0.0000),
(3, NULL),
(4, 2199.9900),
(5, 0.0000)
SET IDENTITY_INSERT NullSample OFF

SET IDENTITY_INSERT PaidInvoices ON 
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES
(1, 122, '989319-457', CAST('2015-12-08 00:00:00' AS SmallDateTime), 3813.3300, 3813.3300, 0.0000, 3, CAST('2016-01-08 00:00:00' AS SmallDateTime), CAST('2016-01-07 00:00:00' AS SmallDateTime)),
(2, 123, '263253241', CAST('2015-12-10 00:00:00' AS SmallDateTime), 40.2000, 40.2000, 0.0000, 3, CAST('2016-01-10 00:00:00' AS SmallDateTime), CAST('2016-01-14 00:00:00' AS SmallDateTime)),
(3, 123, '963253234', CAST('2015-12-13 00:00:00' AS SmallDateTime), 138.7500, 138.7500, 0.0000, 3, CAST('2016-01-13 00:00:00' AS SmallDateTime), CAST('2016-01-09 00:00:00' AS SmallDateTime)),
(4, 123, '2-000-2993', CAST('2015-12-16 00:00:00' AS SmallDateTime), 144.7000, 144.7000, 0.0000, 3, CAST('2016-01-16 00:00:00' AS SmallDateTime), CAST('2016-01-12 00:00:00' AS SmallDateTime)),
(5, 123, '963253251', CAST('2015-12-16 00:00:00' AS SmallDateTime), 15.5000, 15.5000, 0.0000, 3, CAST('2016-01-16 00:00:00' AS SmallDateTime), CAST('2016-01-11 00:00:00' AS SmallDateTime)),
(6, 123, '963253261', CAST('2015-12-16 00:00:00' AS SmallDateTime), 42.7500, 42.7500, 0.0000, 3, CAST('2016-01-16 00:00:00' AS SmallDateTime), CAST('2016-01-21 00:00:00' AS SmallDateTime)),
(7, 123, '963253237', CAST('2015-12-21 00:00:00' AS SmallDateTime), 172.5000, 172.5000, 0.0000, 3, CAST('2016-01-21 00:00:00' AS SmallDateTime), CAST('2016-01-22 00:00:00' AS SmallDateTime)),
(8, 89, '125520-1', CAST('2015-12-24 00:00:00' AS SmallDateTime), 95.0000, 95.0000, 0.0000, 1, CAST('2016-01-04 00:00:00' AS SmallDateTime), CAST('2016-01-01 00:00:00' AS SmallDateTime)),
(9, 121, '97/488', CAST('2015-12-24 00:00:00' AS SmallDateTime), 601.9500, 601.9500, 0.0000, 3, CAST('2016-01-24 00:00:00' AS SmallDateTime), CAST('2016-01-21 00:00:00' AS SmallDateTime)),
(10, 123, '263253250', CAST('2015-12-24 00:00:00' AS SmallDateTime), 42.6700, 42.6700, 0.0000, 3, CAST('2016-01-24 00:00:00' AS SmallDateTime), CAST('2016-01-22 00:00:00' AS SmallDateTime)),
(11, 123, '963253262', CAST('2015-12-25 00:00:00' AS SmallDateTime), 42.5000, 42.5000, 0.0000, 3, CAST('2016-01-25 00:00:00' AS SmallDateTime), CAST('2016-01-20 00:00:00' AS SmallDateTime)),
(12, 96, 'I77271-O01', CAST('2015-12-26 00:00:00' AS SmallDateTime), 662.0000, 662.0000, 0.0000, 2, CAST('2016-01-16 00:00:00' AS SmallDateTime), CAST('2016-01-13 00:00:00' AS SmallDateTime)),
(13, 95, '111-92R-10096', CAST('2015-12-30 00:00:00' AS SmallDateTime), 16.3300, 16.3300, 0.0000, 2, CAST('2016-01-20 00:00:00' AS SmallDateTime), CAST('2016-01-23 00:00:00' AS SmallDateTime)),
(14, 115, '25022117', CAST('2016-01-01 00:00:00' AS SmallDateTime), 6.0000, 6.0000, 0.0000, 4, CAST('2016-02-10 00:00:00' AS SmallDateTime), CAST('2016-02-10 00:00:00' AS SmallDateTime)),
(15, 48, 'P02-88D77S7', CAST('2016-01-03 00:00:00' AS SmallDateTime), 856.9200, 856.9200, 0.0000, 3, CAST('2016-02-02 00:00:00' AS SmallDateTime), CAST('2016-01-30 00:00:00' AS SmallDateTime)),
(16, 97, '21-4748363', CAST('2016-01-03 00:00:00' AS SmallDateTime), 9.9500, 9.9500, 0.0000, 2, CAST('2016-01-23 00:00:00' AS SmallDateTime), CAST('2016-01-22 00:00:00' AS SmallDateTime)),
(17, 123, '4-321-2596', CAST('2016-01-05 00:00:00' AS SmallDateTime), 10.0000, 10.0000, 0.0000, 3, CAST('2016-02-04 00:00:00' AS SmallDateTime), CAST('2016-02-05 00:00:00' AS SmallDateTime)),
(18, 123, '963253242', CAST('2016-01-06 00:00:00' AS SmallDateTime), 104.0000, 104.0000, 0.0000, 3, CAST('2016-02-05 00:00:00' AS SmallDateTime), CAST('2016-02-05 00:00:00' AS SmallDateTime)),
(19, 34, 'QP58872', CAST('2016-01-07 00:00:00' AS SmallDateTime), 116.5400, 116.5400, 0.0000, 1, CAST('2016-01-17 00:00:00' AS SmallDateTime), CAST('2016-01-19 00:00:00' AS SmallDateTime)),
(20, 115, '24863706', CAST('2016-01-10 00:00:00' AS SmallDateTime), 6.0000, 6.0000, 0.0000, 4, CAST('2016-02-19 00:00:00' AS SmallDateTime), CAST('2016-02-15 00:00:00' AS SmallDateTime)),
(21, 119, '10843', CAST('2016-01-11 00:00:00' AS SmallDateTime), 4901.2600, 4901.2600, 0.0000, 2, CAST('2016-01-31 00:00:00' AS SmallDateTime), CAST('2016-01-29 00:00:00' AS SmallDateTime)),
(22, 123, '963253235', CAST('2016-01-11 00:00:00' AS SmallDateTime), 108.2500, 108.2500, 0.0000, 3, CAST('2016-02-10 00:00:00' AS SmallDateTime), CAST('2016-02-09 00:00:00' AS SmallDateTime)),
(23, 97, '21-4923721', CAST('2016-01-13 00:00:00' AS SmallDateTime), 9.9500, 9.9500, 0.0000, 2, CAST('2016-02-02 00:00:00' AS SmallDateTime), CAST('2016-01-28 00:00:00' AS SmallDateTime)),
(24, 113, '77290', CAST('2016-01-13 00:00:00' AS SmallDateTime), 1750.0000, 1750.0000, 0.0000, 5, CAST('2016-03-02 00:00:00' AS SmallDateTime), CAST('2016-03-05 00:00:00' AS SmallDateTime)),
(25, 123, '963253246', CAST('2016-01-13 00:00:00' AS SmallDateTime), 129.0000, 129.0000, 0.0000, 3, CAST('2016-02-12 00:00:00' AS SmallDateTime), CAST('2016-02-09 00:00:00' AS SmallDateTime)),
(26, 123, '4-342-8069', CAST('2016-01-14 00:00:00' AS SmallDateTime), 10.0000, 10.0000, 0.0000, 3, CAST('2016-02-13 00:00:00' AS SmallDateTime), CAST('2016-02-13 00:00:00' AS SmallDateTime)),
(27, 88, '972110', CAST('2016-01-15 00:00:00' AS SmallDateTime), 207.7800, 207.7800, 0.0000, 1, CAST('2016-01-25 00:00:00' AS SmallDateTime), CAST('2016-01-27 00:00:00' AS SmallDateTime)),
(28, 123, '963253263', CAST('2016-01-16 00:00:00' AS SmallDateTime), 109.5000, 109.5000, 0.0000, 3, CAST('2016-02-15 00:00:00' AS SmallDateTime), CAST('2016-02-10 00:00:00' AS SmallDateTime)),
(29, 108, '121897', CAST('2016-01-19 00:00:00' AS SmallDateTime), 450.0000, 450.0000, 0.0000, 4, CAST('2016-02-28 00:00:00' AS SmallDateTime), CAST('2016-03-03 00:00:00' AS SmallDateTime)),
(30, 123, '1-200-5164', CAST('2016-01-20 00:00:00' AS SmallDateTime), 63.4000, 63.4000, 0.0000, 3, CAST('2016-02-19 00:00:00' AS SmallDateTime), CAST('2016-02-24 00:00:00' AS SmallDateTime)),
(31, 104, 'P02-3772', CAST('2016-01-21 00:00:00' AS SmallDateTime), 7125.3400, 7125.3400, 0.0000, 3, CAST('2016-02-20 00:00:00' AS SmallDateTime), CAST('2016-02-24 00:00:00' AS SmallDateTime)),
(32, 121, '97/486', CAST('2016-01-21 00:00:00' AS SmallDateTime), 953.1000, 953.1000, 0.0000, 3, CAST('2016-02-20 00:00:00' AS SmallDateTime), CAST('2016-02-22 00:00:00' AS SmallDateTime)),
(33, 105, '94007005', CAST('2016-01-23 00:00:00' AS SmallDateTime), 220.0000, 220.0000, 0.0000, 3, CAST('2016-02-22 00:00:00' AS SmallDateTime), CAST('2016-02-26 00:00:00' AS SmallDateTime)),
(34, 123, '963253232', CAST('2016-01-23 00:00:00' AS SmallDateTime), 127.7500, 127.7500, 0.0000, 3, CAST('2016-02-22 00:00:00' AS SmallDateTime), CAST('2016-02-18 00:00:00' AS SmallDateTime)),
(35, 107, 'RTR-72-3662-X', CAST('2016-01-25 00:00:00' AS SmallDateTime), 1600.0000, 1600.0000, 0.0000, 4, CAST('2016-03-04 00:00:00' AS SmallDateTime), CAST('2016-03-09 00:00:00' AS SmallDateTime)),
(36, 121, '97/465', CAST('2016-01-25 00:00:00' AS SmallDateTime), 565.1500, 565.1500, 0.0000, 3, CAST('2016-02-24 00:00:00' AS SmallDateTime), CAST('2016-02-24 00:00:00' AS SmallDateTime)),
(37, 123, '963253260', CAST('2016-01-25 00:00:00' AS SmallDateTime), 36.0000, 36.0000, 0.0000, 3, CAST('2016-02-24 00:00:00' AS SmallDateTime), CAST('2016-02-26 00:00:00' AS SmallDateTime)),
(38, 123, '963253272', CAST('2016-01-26 00:00:00' AS SmallDateTime), 61.5000, 61.5000, 0.0000, 3, CAST('2016-02-25 00:00:00' AS SmallDateTime), CAST('2016-02-28 00:00:00' AS SmallDateTime)),
(39, 110, '0-2058', CAST('2016-01-28 00:00:00' AS SmallDateTime), 37966.1900, 37966.1900, 0.0000, 3, CAST('2016-02-27 00:00:00' AS SmallDateTime), CAST('2016-02-28 00:00:00' AS SmallDateTime)),
(40, 121, '97/503', CAST('2016-01-30 00:00:00' AS SmallDateTime), 639.7700, 639.7700, 0.0000, 3, CAST('2016-02-28 00:00:00' AS SmallDateTime), CAST('2016-02-25 00:00:00' AS SmallDateTime)),
(41, 123, '963253255', CAST('2016-01-31 00:00:00' AS SmallDateTime), 53.7500, 53.7500, 0.0000, 3, CAST('2016-02-28 00:00:00' AS SmallDateTime), CAST('2016-02-27 00:00:00' AS SmallDateTime)),
(42, 123, '94007069', CAST('2016-01-31 00:00:00' AS SmallDateTime), 400.0000, 400.0000, 0.0000, 3, CAST('2016-02-28 00:00:00' AS SmallDateTime), CAST('2016-03-01 00:00:00' AS SmallDateTime)),
(43, 72, '40318', CAST('2016-02-01 00:00:00' AS SmallDateTime), 21842.0000, 21842.0000, 0.0000, 3, CAST('2016-03-01 00:00:00' AS SmallDateTime), CAST('2016-02-28 00:00:00' AS SmallDateTime)),
(44, 95, '111-92R-10094', CAST('2016-02-01 00:00:00' AS SmallDateTime), 19.6700, 19.6700, 0.0000, 2, CAST('2016-02-21 00:00:00' AS SmallDateTime), CAST('2016-02-24 00:00:00' AS SmallDateTime)),
(45, 122, '989319-437', CAST('2016-02-01 00:00:00' AS SmallDateTime), 2765.3600, 2765.3600, 0.0000, 3, CAST('2016-03-01 00:00:00' AS SmallDateTime), CAST('2016-02-28 00:00:00' AS SmallDateTime)),
(46, 37, '547481328', CAST('2016-02-03 00:00:00' AS SmallDateTime), 224.0000, 224.0000, 0.0000, 3, CAST('2016-03-03 00:00:00' AS SmallDateTime), CAST('2016-03-04 00:00:00' AS SmallDateTime)),
(47, 83, '31359783', CAST('2016-02-03 00:00:00' AS SmallDateTime), 1575.0000, 1575.0000, 0.0000, 2, CAST('2016-02-23 00:00:00' AS SmallDateTime), CAST('2016-02-21 00:00:00' AS SmallDateTime)),
(48, 123, '1-202-2978', CAST('2016-02-03 00:00:00' AS SmallDateTime), 33.0000, 33.0000, 0.0000, 3, CAST('2016-03-03 00:00:00' AS SmallDateTime), CAST('2016-03-05 00:00:00' AS SmallDateTime)),
(49, 95, '111-92R-10097', CAST('2016-02-04 00:00:00' AS SmallDateTime), 16.3300, 16.3300, 0.0000, 2, CAST('2016-02-24 00:00:00' AS SmallDateTime), CAST('2016-02-26 00:00:00' AS SmallDateTime)),
(50, 37, '547479217', CAST('2016-02-07 00:00:00' AS SmallDateTime), 116.0000, 116.0000, 0.0000, 3, CAST('2016-03-07 00:00:00' AS SmallDateTime), CAST('2016-03-07 00:00:00' AS SmallDateTime)),
(51, 122, '989319-477', CAST('2016-02-08 00:00:00' AS SmallDateTime), 2184.1100, 2184.1100, 0.0000, 3, CAST('2016-03-08 00:00:00' AS SmallDateTime), CAST('2016-03-08 00:00:00' AS SmallDateTime)),
(52, 34, 'Q545443', CAST('2016-02-09 00:00:00' AS SmallDateTime), 1083.5800, 1083.5800, 0.0000, 1, CAST('2016-02-19 00:00:00' AS SmallDateTime), CAST('2016-02-23 00:00:00' AS SmallDateTime)),
(53, 95, '111-92R-10092', CAST('2016-02-09 00:00:00' AS SmallDateTime), 46.2100, 46.2100, 0.0000, 2, CAST('2016-02-28 00:00:00' AS SmallDateTime), CAST('2016-03-02 00:00:00' AS SmallDateTime)),
(54, 121, '97/553B', CAST('2016-02-10 00:00:00' AS SmallDateTime), 313.5500, 313.5500, 0.0000, 3, CAST('2016-03-10 00:00:00' AS SmallDateTime), CAST('2016-03-09 00:00:00' AS SmallDateTime)),
(55, 123, '963253245', CAST('2016-02-10 00:00:00' AS SmallDateTime), 40.7500, 40.7500, 0.0000, 3, CAST('2016-03-10 00:00:00' AS SmallDateTime), CAST('2016-03-12 00:00:00' AS SmallDateTime)),
(56, 86, '367447', CAST('2016-02-11 00:00:00' AS SmallDateTime), 2433.0000, 2433.0000, 0.0000, 1, CAST('2016-02-21 00:00:00' AS SmallDateTime), CAST('2016-02-17 00:00:00' AS SmallDateTime)),
(57, 103, '75C-90227', CAST('2016-02-11 00:00:00' AS SmallDateTime), 1367.5000, 1367.5000, 0.0000, 5, CAST('2016-03-31 00:00:00' AS SmallDateTime), CAST('2016-03-31 00:00:00' AS SmallDateTime)),
(58, 123, '963253256', CAST('2016-02-11 00:00:00' AS SmallDateTime), 53.2500, 53.2500, 0.0000, 3, CAST('2016-03-11 00:00:00' AS SmallDateTime), CAST('2016-03-07 00:00:00' AS SmallDateTime)),
(59, 123, '4-314-3057', CAST('2016-02-11 00:00:00' AS SmallDateTime), 13.7500, 13.7500, 0.0000, 3, CAST('2016-03-11 00:00:00' AS SmallDateTime), CAST('2016-03-15 00:00:00' AS SmallDateTime)),
(60, 122, '989319-497', CAST('2016-02-12 00:00:00' AS SmallDateTime), 2312.2000, 2312.2000, 0.0000, 3, CAST('2016-03-12 00:00:00' AS SmallDateTime), CAST('2016-03-09 00:00:00' AS SmallDateTime)),
(61, 115, '24946731', CAST('2016-02-15 00:00:00' AS SmallDateTime), 25.6700, 25.6700, 0.0000, 4, CAST('2016-03-25 00:00:00' AS SmallDateTime), CAST('2016-03-26 00:00:00' AS SmallDateTime)),
(62, 123, '963253269', CAST('2016-02-15 00:00:00' AS SmallDateTime), 26.7500, 26.7500, 0.0000, 3, CAST('2016-03-15 00:00:00' AS SmallDateTime), CAST('2016-03-11 00:00:00' AS SmallDateTime)),
(63, 122, '989319-427', CAST('2016-02-16 00:00:00' AS SmallDateTime), 2115.8100, 2115.8100, 0.0000, 3, CAST('2016-03-16 00:00:00' AS SmallDateTime), CAST('2016-03-19 00:00:00' AS SmallDateTime)),
(64, 123, '963253267', CAST('2016-02-17 00:00:00' AS SmallDateTime), 23.5000, 23.5000, 0.0000, 3, CAST('2016-03-17 00:00:00' AS SmallDateTime), CAST('2016-03-19 00:00:00' AS SmallDateTime)),
(65, 99, '509786', CAST('2016-02-18 00:00:00' AS SmallDateTime), 6940.2500, 6940.2500, 0.0000, 3, CAST('2016-03-18 00:00:00' AS SmallDateTime), CAST('2016-03-15 00:00:00' AS SmallDateTime)),
(66, 123, '263253253', CAST('2016-02-18 00:00:00' AS SmallDateTime), 31.9500, 31.9500, 0.0000, 3, CAST('2016-03-18 00:00:00' AS SmallDateTime), CAST('2016-03-21 00:00:00' AS SmallDateTime)),
(67, 122, '989319-487', CAST('2016-02-20 00:00:00' AS SmallDateTime), 1927.5400, 1927.5400, 0.0000, 3, CAST('2016-03-20 00:00:00' AS SmallDateTime), CAST('2016-03-18 00:00:00' AS SmallDateTime)),
(68, 81, 'MABO1489', CAST('2016-02-21 00:00:00' AS SmallDateTime), 936.9300, 936.9300, 0.0000, 2, CAST('2016-03-11 00:00:00' AS SmallDateTime), CAST('2016-03-10 00:00:00' AS SmallDateTime)),
(69, 80, '133560', CAST('2016-02-22 00:00:00' AS SmallDateTime), 175.0000, 175.0000, 0.0000, 2, CAST('2016-03-12 00:00:00' AS SmallDateTime), CAST('2016-03-16 00:00:00' AS SmallDateTime)),
(70, 115, '24780512', CAST('2016-02-22 00:00:00' AS SmallDateTime), 6.0000, 6.0000, 0.0000, 4, CAST('2016-04-01 00:00:00' AS SmallDateTime), CAST('2016-03-29 00:00:00' AS SmallDateTime)),
(71, 123, '963253254', CAST('2016-02-22 00:00:00' AS SmallDateTime), 108.5000, 108.5000, 0.0000, 3, CAST('2016-03-22 00:00:00' AS SmallDateTime), CAST('2016-03-20 00:00:00' AS SmallDateTime)),
(72, 123, '43966316', CAST('2016-02-22 00:00:00' AS SmallDateTime), 10.0000, 10.0000, 0.0000, 3, CAST('2016-03-22 00:00:00' AS SmallDateTime), CAST('2016-03-17 00:00:00' AS SmallDateTime)),
(73, 114, 'CBM9920-M-T77109', CAST('2016-02-23 00:00:00' AS SmallDateTime), 290.0000, 290.0000, 0.0000, 1, CAST('2016-03-03 00:00:00' AS SmallDateTime), CAST('2016-02-28 00:00:00' AS SmallDateTime)),
(74, 102, '109596', CAST('2016-02-24 00:00:00' AS SmallDateTime), 41.8000, 41.8000, 0.0000, 4, CAST('2016-04-03 00:00:00' AS SmallDateTime), CAST('2016-04-04 00:00:00' AS SmallDateTime)),
(75, 123, '7548906-20', CAST('2016-02-24 00:00:00' AS SmallDateTime), 27.0000, 27.0000, 0.0000, 3, CAST('2016-03-24 00:00:00' AS SmallDateTime), CAST('2016-03-24 00:00:00' AS SmallDateTime)),
(76, 123, '963253248', CAST('2016-02-24 00:00:00' AS SmallDateTime), 241.0000, 241.0000, 0.0000, 3, CAST('2016-03-24 00:00:00' AS SmallDateTime), CAST('2016-03-25 00:00:00' AS SmallDateTime)),
(77, 121, '97/553', CAST('2016-02-25 00:00:00' AS SmallDateTime), 904.1400, 904.1400, 0.0000, 3, CAST('2016-03-25 00:00:00' AS SmallDateTime), CAST('2016-03-25 00:00:00' AS SmallDateTime)),
(78, 121, '97/522', CAST('2016-02-28 00:00:00' AS SmallDateTime), 1962.1300, 1762.1300, 200.0000, 3, CAST('2016-03-28 00:00:00' AS SmallDateTime), CAST('2016-03-30 00:00:00' AS SmallDateTime)),
(79, 100, '587056', CAST('2016-02-28 00:00:00' AS SmallDateTime), 2184.5000, 2184.5000, 0.0000, 4, CAST('2016-04-09 00:00:00' AS SmallDateTime), CAST('2016-04-07 00:00:00' AS SmallDateTime)),
(80, 122, '989319-467', CAST('2016-03-01 00:00:00' AS SmallDateTime), 2318.0300, 2318.0300, 0.0000, 3, CAST('2016-03-31 00:00:00' AS SmallDateTime), CAST('2016-03-29 00:00:00' AS SmallDateTime)),
(81, 123, '263253265', CAST('2016-03-02 00:00:00' AS SmallDateTime), 26.2500, 26.2500, 0.0000, 3, CAST('2016-04-01 00:00:00' AS SmallDateTime), CAST('2016-03-28 00:00:00' AS SmallDateTime)),
(82, 94, '203339-13', CAST('2016-03-05 00:00:00' AS SmallDateTime), 17.5000, 17.5000, 0.0000, 2, CAST('2016-03-25 00:00:00' AS SmallDateTime), CAST('2016-03-27 00:00:00' AS SmallDateTime)),
(83, 95, '111-92R-10093', CAST('2016-03-06 00:00:00' AS SmallDateTime), 39.7700, 39.7700, 0.0000, 2, CAST('2016-03-26 00:00:00' AS SmallDateTime), CAST('2016-03-22 00:00:00' AS SmallDateTime)),
(84, 123, '963253258', CAST('2016-03-06 00:00:00' AS SmallDateTime), 111.0000, 111.0000, 0.0000, 3, CAST('2016-04-05 00:00:00' AS SmallDateTime), CAST('2016-04-05 00:00:00' AS SmallDateTime)),
(85, 123, '963253271', CAST('2016-03-07 00:00:00' AS SmallDateTime), 158.0000, 158.0000, 0.0000, 3, CAST('2016-04-06 00:00:00' AS SmallDateTime), CAST('2016-04-11 00:00:00' AS SmallDateTime)),
(86, 123, '963253230', CAST('2016-03-07 00:00:00' AS SmallDateTime), 739.2000, 739.2000, 0.0000, 3, CAST('2016-04-06 00:00:00' AS SmallDateTime), CAST('2016-04-06 00:00:00' AS SmallDateTime)),
(87, 123, '963253244', CAST('2016-03-08 00:00:00' AS SmallDateTime), 60.0000, 60.0000, 0.0000, 3, CAST('2016-04-07 00:00:00' AS SmallDateTime), CAST('2016-04-09 00:00:00' AS SmallDateTime)),
(88, 123, '963253239', CAST('2016-03-08 00:00:00' AS SmallDateTime), 147.2500, 147.2500, 0.0000, 3, CAST('2016-04-07 00:00:00' AS SmallDateTime), CAST('2016-04-11 00:00:00' AS SmallDateTime)),
(90, 123, '963253252', CAST('2016-03-12 00:00:00' AS SmallDateTime), 38.7500, 38.7500, 0.0000, 3, CAST('2016-04-11 00:00:00' AS SmallDateTime), CAST('2016-04-11 00:00:00' AS SmallDateTime)),
(91, 95, '111-92R-10095', CAST('2016-03-15 00:00:00' AS SmallDateTime), 32.7000, 32.7000, 0.0000, 2, CAST('2016-04-04 00:00:00' AS SmallDateTime), CAST('2016-04-06 00:00:00' AS SmallDateTime)),
(92, 117, '111897', CAST('2016-03-15 00:00:00' AS SmallDateTime), 16.6200, 16.6200, 0.0000, 3, CAST('2016-04-14 00:00:00' AS SmallDateTime), CAST('2016-04-14 00:00:00' AS SmallDateTime)),
(93, 123, '4-327-7357', CAST('2016-03-16 00:00:00' AS SmallDateTime), 162.7500, 162.7500, 0.0000, 3, CAST('2016-04-15 00:00:00' AS SmallDateTime), CAST('2016-04-11 00:00:00' AS SmallDateTime)),
(95, 82, 'C73-24', CAST('2016-03-19 00:00:00' AS SmallDateTime), 600.0000, 600.0000, 0.0000, 2, CAST('2016-04-08 00:00:00' AS SmallDateTime), CAST('2016-04-13 00:00:00' AS SmallDateTime)),
(96, 110, 'P-0259', CAST('2016-03-19 00:00:00' AS SmallDateTime), 26881.4000, 26881.4000, 0.0000, 3, CAST('2016-04-18 00:00:00' AS SmallDateTime), CAST('2016-04-20 00:00:00' AS SmallDateTime)),
(97, 90, '97-1024A', CAST('2016-03-20 00:00:00' AS SmallDateTime), 356.4800, 356.4800, 0.0000, 2, CAST('2016-04-09 00:00:00' AS SmallDateTime), CAST('2016-04-07 00:00:00' AS SmallDateTime)),
(103, 122, '989319-417', CAST('2016-03-23 00:00:00' AS SmallDateTime), 2051.5900, 2051.5900, 0.0000, 3, CAST('2016-04-22 00:00:00' AS SmallDateTime), CAST('2016-04-24 00:00:00' AS SmallDateTime)),
(104, 123, '263253243', CAST('2016-03-23 00:00:00' AS SmallDateTime), 44.4400, 44.4400, 0.0000, 3, CAST('2016-04-22 00:00:00' AS SmallDateTime), CAST('2016-04-24 00:00:00' AS SmallDateTime)),
(106, 110, '0-2060', CAST('2016-03-24 00:00:00' AS SmallDateTime), 23517.5800, 21221.6300, 2295.9500, 3, CAST('2016-04-23 00:00:00' AS SmallDateTime), CAST('2016-04-27 00:00:00' AS SmallDateTime)),
(107, 122, '989319-447', CAST('2016-03-24 00:00:00' AS SmallDateTime), 3689.9900, 3689.9900, 0.0000, 3, CAST('2016-04-23 00:00:00' AS SmallDateTime), CAST('2016-04-19 00:00:00' AS SmallDateTime)),
(108, 123, '963253240', CAST('2016-03-24 00:00:00' AS SmallDateTime), 67.0000, 67.0000, 0.0000, 3, CAST('2016-04-23 00:00:00' AS SmallDateTime), CAST('2016-04-23 00:00:00' AS SmallDateTime)),
(109, 121, '97/222', CAST('2016-03-25 00:00:00' AS SmallDateTime), 1000.4600, 1000.4600, 0.0000, 3, CAST('2016-04-24 00:00:00' AS SmallDateTime), CAST('2016-04-22 00:00:00' AS SmallDateTime)),
(111, 123, '263253257', CAST('2016-03-30 00:00:00' AS SmallDateTime), 22.5700, 22.5700, 0.0000, 3, CAST('2016-04-29 00:00:00' AS SmallDateTime), CAST('2016-05-03 00:00:00' AS SmallDateTime)),
(114, 123, '963253249', CAST('2016-04-02 00:00:00' AS SmallDateTime), 127.7500, 127.7500, 0.0000, 3, CAST('2016-05-01 00:00:00' AS SmallDateTime), CAST('2016-05-04 00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT PaidInvoices OFF

INSERT Projects (ProjectNo, EmployeeID) VALUES
('P1011', 8),
('P1011', 4),
('P1012', 3),
('P1012', 1),
('P1012', 5),
('P1013', 6),
('P1013', 9),
('P1014', 10)

SET IDENTITY_INSERT RealSample ON 
INSERT RealSample (ID, R) VALUES
(1, 1.0000000000000011),
(2, 1),
(3, 0.999999999999999),
(4, 1234.56789012345),
(5, 999.04440209348),
(6, 24.04849)
SET IDENTITY_INSERT RealSample OFF

SET IDENTITY_INSERT SalesReps ON 
INSERT SalesReps (RepID, RepFirstName, RepLastName) VALUES
(1, 'Jonathon', 'Thomas'),
(2, 'Sonja', 'Martinez'),
(3, 'Andrew', 'Markasian'),
(4, 'Phillip', 'Winters'),
(5, 'Lydia', 'Kramer')
SET IDENTITY_INSERT SalesReps OFF

INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES
(1, '2014', 1274856.3800),
(1, '2015', 923746.8500),
(1, '2016', 998337.4600),
(2, '2014', 978465.9900),
(2, '2015', 974853.8100),
(2, '2016', 887695.7500),
(3, '2014', 1032875.4800),
(3, '2015', 1132744.5600),
(4, '2015', 655786.9200),
(4, '2016', 72443.3700),
(5, '2015', 422847.8600),
(5, '2016', 45182.4400)

SET IDENTITY_INSERT Sample ON 
INSERT Sample (ID, Number, Color) VALUES
(1, 8937, 'Brown     '),
(2, 3662, 'Blue      '),
(3, NULL, 'Red       '),
(4, 4553, 'Green     '),
(5, 8937, 'Yellow    '),
(6, 606, 'Purple    '),
(7, NULL, 'Orange    '),
(8, 808, 'None      '),
(9, NULL, 'None      '),
(10, NULL, 'None      '),
(11, NULL, 'None      ')
SET IDENTITY_INSERT Sample OFF

INSERT StringSample (ID, Name, AltID) VALUES 
('1  ', 'Lizbeth Darien', '01 '),
('2  ', 'Darnell O''Sullivan', '02 '),
('17 ', 'Lance Pinos-Potter', '17 '),
('20 ', 'Jean Paul Renard', '20 '),
('3  ', 'Alisha von Strump', '03 ')

SET IDENTITY_INSERT Vendors ON 
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES
(1, 'US Postal Service', 'Attn:  Supt. Window Services', 'PO Box 7005', 'Madison', 'WI', '53707', 'Alberto', 'Francesco', '(209) 555-1205', 1, 552, CAST('2009-03-23 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(2, 'National Information Data Ctr', 'PO Box 96621', '', 'Washington', 'DC', '20110', 'Irvin', 'Ania', '(301) 555-8950', 3, 540, CAST('2012-11-11 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(3, 'Register of Copyrights', 'Library Of Congress', '', 'Washington', 'DC', '20559', 'Liana', 'Lukas', '', 3, 403, CAST('2012-11-28 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(4, 'Jobtrak', '1990 Westwood Blvd Ste 260', '', 'Los Angeles', 'CA', '90025', 'Quinn', 'Kenzie', '(800) 555-8725', 3, 572, CAST('2012-12-10 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(5, 'Newbrige Book Clubs', '3000 Cindel Drive', '', 'Delran', 'NJ', '08370', 'Marks', 'Michelle', '(800) 555-9980', 4, 394, CAST('2013-02-25 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(6, 'California Chamber Of Commerce', '3255 Ramos Cir', '', 'Sacramento', 'CA', '95827', 'Mauro', 'Anton', '(916) 555-6670', 3, 572, CAST('2013-03-29 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(7, 'Towne Advertiser''s Mailing Svcs', 'Kevin Minder', '3441 W Macarthur Blvd', 'Santa Ana', 'CA', '92704', 'Maegen', 'Ted', '', 3, 540, CAST('2013-08-24 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(8, 'BFI Industries', 'PO Box 9369', '', 'Fresno', 'CA', '93792', 'Kaleigh', 'Erick', '(209) 555-1551', 3, 521, CAST('2014-01-08 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(9, 'Pacific Gas & Electric', 'Box 52001', '', 'San Francisco', 'CA', '94152', 'Anthoni', 'Kaitlyn', '(209) 555-6081', 3, 521, CAST('2014-01-08 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(10, 'Robbins Mobile Lock And Key', '4669 N Fresno', '', 'Fresno', 'CA', '93726', 'Leigh', 'Bill', '(209) 555-9375', 2, 523, CAST('2014-01-08 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(11, 'Bill Marvin Electric Inc', '4583 E Home', '', 'Fresno', 'CA', '93703', 'Hostlery', 'Kaitlin', '(209) 555-5106', 2, 523, CAST('2014-01-15 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(12, 'City Of Fresno', 'PO Box 2069', '', 'Fresno', 'CA', '93718', 'Mayte', 'Kendall', '(209) 555-9999', 3, 574, CAST('2014-01-15 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(13, 'Golden Eagle Insurance Co', 'PO Box 85826', '', 'San Diego', 'CA', '92186', 'Blanca', 'Korah', '', 3, 590, CAST('2014-01-21 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 0.0000, 0.0000),
(14, 'Expedata Inc', '4420 N. First Street, Suite 108', '', 'Fresno', 'CA', '93726', 'Quintin', 'Marvin', '(209) 555-9586', 3, 589, CAST('2014-02-11 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 6.9500, 0.0000),
(15, 'ASC Signs', '1528 N Sierra Vista', '', 'Fresno', 'CA', '93703', 'Darien', 'Elisabeth', '', 1, 546, CAST('2014-02-25 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 108.0000, 0.0000),
(16, 'Internal Revenue Service', '', '', 'Fresno', 'CA', '93888', 'Aileen', 'Joan', '', 1, 235, CAST('2014-03-09 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 86.0700, 0.0000),
(17, 'Blanchard & Johnson Associates', '27371 Valderas', '', 'Mission Viejo', 'CA', '92691', 'Keeton', 'Gonzalo', '(214) 555-3647', 3, 540, CAST('2014-03-23 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 354.2700, 0.0000),
(18, 'Fresno Photoengraving Company', '1952 "H" Street', 'P.O. Box 1952', 'Fresno', 'CA', '93718', 'Chaddick', 'Derek', '(209) 555-3005', 3, 403, CAST('2014-03-23 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 50.3700, 0.0000),
(19, 'Crown Printing', '1730 "H" St', '', 'Fresno', 'CA', '93721', 'Randrup', 'Leann', '(209) 555-7473', 2, 400, CAST('2014-04-14 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 3016.1200, 0.0000),
(20, 'Diversified Printing & Pub', '2632 Saturn St', '', 'Brea', 'CA', '92621', 'Lane', 'Vanesa', '(714) 555-4541', 3, 400, CAST('2014-04-14 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 8805.7300, 0.0000),
(21, 'The Library Ltd', '7700 Forsyth', '', 'St Louis', 'MO', '63105', 'Marques', 'Malia', '(314) 555-8834', 3, 540, CAST('2014-07-26 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 100.0000, 0.0000),
(22, 'Micro Center', '1555 W Lane Ave', '', 'Columbus', 'OH', '43221', 'Evan', 'Emily', '(614) 555-4435', 2, 160, CAST('2014-08-10 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 1200.0000, 0.0000),
(23, 'Yale Industrial Trucks-Fresno', '3711 W Franklin', '', 'Fresno', 'CA', '93706', 'Alexis', 'Alexandro', '(209) 555-2993', 3, 532, CAST('2014-08-29 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 479.6300, 0.0000),
(24, 'Zee Medical Service Co', '4221 W Sierra Madre #104', '', 'Fresno', 'CA', '93722', 'Hallie', 'Juliana', '', 3, 570, CAST('2014-08-29 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 84.7800, 0.0000),
(25, 'California Data Marketing', '2818 E Hamilton', '', 'Fresno', 'CA', '93721', 'Jonessen', 'Moises', '(209) 555-3801', 4, 540, CAST('2014-09-27 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 2577.8600, 0.0000),
(26, 'Small Press', '121 E Front St - 4th Floor', '', 'Traverse City', 'MI', '49684', 'Colette', 'Dusty', '', 3, 540, CAST('2014-11-01 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 34.0000, 0.0000),
(27, 'Rich Advertising', '12 Daniel Road', '', 'Fairfield', 'NJ', '07004', 'Neil', 'Ingrid', '(201) 555-9742', 3, 540, CAST('2014-11-29 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 3000.0000, 0.0000),
(29, 'Vision Envelope & Printing', 'PO Box 3100', '', 'Gardena', 'CA', '90247', 'Raven', 'Jamari', '(310) 555-7062', 3, 551, CAST('2014-12-12 00:00:00' AS SmallDateTime), 0.0000, 0.0000, 1248.8300, 0.0000),
(30, 'Costco', 'Fresno Warehouse', '4500 W Shaw', 'Fresno', 'CA', '93711', 'Jaquan', 'Aaron', '', 3, 570, CAST('2015-02-02 00:00:00' AS SmallDateTime), 140.0000, 0.0000, 0.0000, 0.0000),
(31, 'Enterprise Communications Inc', '1483 Chain Bridge Rd, Ste 202', '', 'Mclean', 'VA', '22101', 'Lawrence', 'Eileen', '(770) 555-9558', 2, 536, CAST('2015-02-21 00:00:00' AS SmallDateTime), 500.0000, 0.0000, 0.0000, 0.0000),
(32, 'RR Bowker', 'PO Box 31', '', 'New Providence', 'NJ', '07974', 'Essence', 'Marjorie', '(800) 555-8110', 3, 532, CAST('2015-02-21 00:00:00' AS SmallDateTime), 272.4800, 0.0000, 0.0000, 0.0000),
(33, 'Nielson', 'Ohio Valley Litho Division', 'Location #0470', 'Cincinnati', 'OH', '45264', 'Brooklynn', 'Keely', '', 2, 541, CAST('2015-02-28 00:00:00' AS SmallDateTime), 5372.0000, 0.0000, 4972.8400, 0.0000),
(34, 'IBM', 'PO Box 61000', '', 'San Francisco', 'CA', '94161', 'Camron', 'Trentin', '(800) 555-4426', 1, 160, CAST('2015-03-13 00:00:00' AS SmallDateTime), 123.0000, 0.0000, 123.0000, 0.0000),
(35, 'Cal State Termite', 'PO Box 956', '', 'Selma', 'CA', '93662', 'Hunter', 'Demetrius', '(209) 555-1534', 2, 523, CAST('2015-03-27 00:00:00' AS SmallDateTime), 65.0000, 0.0000, 0.0000, 0.0000),
(36, 'Graylift', 'PO Box 2808', '', 'Fresno', 'CA', '93745', 'Sydney', 'Deangelo', '(209) 555-6621', 3, 532, CAST('2015-03-27 00:00:00' AS SmallDateTime), 62.1400, 0.0000, 630.7400, 0.0000),
(37, 'Blue Cross', 'PO Box 9061', '', 'Oxnard', 'CA', '93031', 'Eliana', 'Nikolas', '(800) 555-0912', 3, 510, CAST('2015-04-04 00:00:00' AS SmallDateTime), 372.0000, 0.0000, 0.0000, 0.0000),
(38, 'Venture Communications Int''l', '60 Madison Ave', '', 'New York', 'NY', '10010', 'Neftaly', 'Thalia', '(212) 555-4800', 3, 540, CAST('2015-04-04 00:00:00' AS SmallDateTime), 6000.0000, 0.0000, 0.0000, 0.0000),
(39, 'Custom Printing Company', 'PO Box 7028', '', 'St Louis', 'MO', '63177', 'Myles', 'Harley', '(301) 555-1494', 3, 540, CAST('2015-04-17 00:00:00' AS SmallDateTime), 12102.0100, 0.0000, 0.0000, 0.0000),
(40, 'Nat Assoc of College Stores', '500 East Lorain Street', '', 'Oberlin', 'OH', '44074', 'Bernard', 'Lucy', '', 3, 572, CAST('2015-04-17 00:00:00' AS SmallDateTime), 390.0000, 0.0000, 390.0000, 0.0000),
(41, 'Shields Design', '415 E Olive Ave', '', 'Fresno', 'CA', '93728', 'Kerry', 'Rowan', '(209) 555-8060', 2, 403, CAST('2015-05-14 00:00:00' AS SmallDateTime), 5588.9900, 0.0000, 22363.2000, 0.0000),
(42, 'Opamp Technical Books', '1033 N Sycamore Ave.', '', 'Los Angeles', 'CA', '90038', 'Paris', 'Gideon', '(213) 555-4322', 3, 572, CAST('2015-05-28 00:00:00' AS SmallDateTime), 700.0000, 0.0000, 1136.1700, 0.0000),
(43, 'Capital Resource Credit', 'PO Box 39046', '', 'Minneapolis', 'MN', '55439', 'Maxwell', 'Jayda', '(612) 555-0057', 3, 589, CAST('2015-06-11 00:00:00' AS SmallDateTime), 59.3800, 0.0000, 0.0000, 0.0000),
(44, 'Courier Companies, Inc', 'PO Box 5317', '', 'Boston', 'MA', '02206', 'Antavius', 'Troy', '(508) 555-6351', 4, 400, CAST('2015-06-11 00:00:00' AS SmallDateTime), 27462.5600, 0.0000, 29074.2500, 0.0000),
(45, 'Naylor Publications Inc', 'PO Box 40513', '', 'Jacksonville', 'FL', '32231', 'Gerald', 'Kristofer', '(800) 555-6041', 3, 572, CAST('2015-06-11 00:00:00' AS SmallDateTime), 99.5000, 0.0000, 0.0000, 0.0000),
(46, 'Open Horizons Publishing', 'Book Marketing Update', 'PO Box 205', 'Fairfield', 'IA', '52556', 'Damien', 'Deborah', '(515) 555-6130', 2, 540, CAST('2015-06-11 00:00:00' AS SmallDateTime), 94.0000, 0.0000, 60.0000, 0.0000),
(47, 'Baker & Taylor Books', 'Five Lakepointe Plaza, Ste 500', '2709 Water Ridge Parkway', 'Charlotte', 'NC', '28217', 'Bernardo', 'Brittnee', '(704) 555-3500', 3, 572, CAST('2015-06-27 00:00:00' AS SmallDateTime), 531.2500, 0.0000, 0.0000, 0.0000),
(48, 'Fresno County Tax Collector', 'PO Box 1192', '', 'Fresno', 'CA', '93715', 'Brenton', 'Kila', '(209) 555-3482', 3, 574, CAST('2015-06-27 00:00:00' AS SmallDateTime), 378.8800, 0.0000, 678.5800, 0.0000),
(49, 'Mcgraw Hill Companies', 'PO Box 87373', '', 'Chicago', 'IL', '60680', 'Holbrooke', 'Rashad', '(614) 555-3663', 3, 572, CAST('2015-06-27 00:00:00' AS SmallDateTime), 70.4100, 0.0000, 0.0000, 0.0000),
(50, 'Publishers Weekly', 'Box 1979', '', 'Marion', 'OH', '43305', 'Carrollton', 'Priscilla', '(800) 555-1669', 3, 572, CAST('2015-06-27 00:00:00' AS SmallDateTime), 169.0000, 0.0000, 149.0000, 0.0000),
(51, 'Blue Shield of California', 'PO Box 7021', '', 'Anaheim', 'CA', '92850', 'Smith', 'Kylie', '(415) 555-5103', 3, 510, CAST('2015-07-08 00:00:00' AS SmallDateTime), 720.0000, 0.0000, 939.0000, 0.0000),
(52, 'Aztek Label', 'Accounts Payable', '1150 N Tustin Ave', 'Aneheim', 'CA', '92807', 'Griffin', 'Brian', '(714) 555-9000', 3, 551, CAST('2015-07-24 00:00:00' AS SmallDateTime), 267.0000, 0.0000, 813.7000, 0.0000),
(53, 'Gary McKeighan Insurance', '3649 W Beechwood Ave #101', '', 'Fresno', 'CA', '93711', 'Jair', 'Caitlin', '(209) 555-2420', 3, 590, CAST('2015-07-24 00:00:00' AS SmallDateTime), 4745.0000, 0.0000, 4990.1800, 0.0000),
(54, 'Ph Photographic Services', '2384 E Gettysburg', '', 'Fresno', 'CA', '93726', 'Cheyenne', 'Kaylea', '(209) 555-0765', 3, 540, CAST('2015-07-24 00:00:00' AS SmallDateTime), 565.1500, 0.0000, 0.0000, 0.0000),
(55, 'Quality Education Data', 'PO Box 95857', '', 'Chicago', 'IL', '60694', 'Misael', 'Kayle', '(800) 555-5811', 2, 540, CAST('2015-07-24 00:00:00' AS SmallDateTime), 799.0900, 0.0000, 0.0000, 0.0000),
(56, 'Springhouse Corp', 'PO Box 7247-7051', '', 'Philadelphia', 'PA', '19170', 'Maeve', 'Clarence', '(215) 555-8700', 3, 523, CAST('2015-07-29 00:00:00' AS SmallDateTime), 1942.2500, 0.0000, 1215.5000, 0.0000),
(57, 'The Windows Deck', '117 W Micheltorena Top Floor', '', 'Santa Barbara', 'CA', '93101', 'Wood', 'Liam', '(800) 555-3353', 3, 536, CAST('2015-07-29 00:00:00' AS SmallDateTime), 2975.0000, 0.0000, 0.0000, 0.0000),
(58, 'Fresno Rack & Shelving Inc', '4718 N Bendel Ave', '', 'Fresno', 'CA', '93722', 'Baylee', 'Dakota', '', 2, 523, CAST('2015-08-13 00:00:00' AS SmallDateTime), 168.0900, 0.0000, 0.0000, 0.0000),
(59, 'Publishers Marketing Assoc', '627 Aviation Way', '', 'Manhatttan Beach', 'CA', '90266', 'Walker', 'Jovon', '(310) 555-2732', 3, 572, CAST('2015-08-13 00:00:00' AS SmallDateTime), 175.0000, 0.0000, 120.0000, 0.0000),
(60, 'The Mailers Guide Co', 'PO Box 1550', '', 'New Rochelle', 'NY', '10802', 'Lacy', 'Karina', '', 3, 540, CAST('2015-08-13 00:00:00' AS SmallDateTime), 69.0000, 0.0000, 59.0000, 0.0000),
(61, 'American Booksellers Assoc', '828 S Broadway', '', 'Tarrytown', 'NY', '10591', 'Angelica', 'Nashalie', '(800) 555-0037', 3, 574, CAST('2015-08-28 00:00:00' AS SmallDateTime), 775.0000, 0.0000, 175.0000, 0.0000),
(62, 'Cmg Information Services', 'PO Box 2283', '', 'Boston', 'MA', '02107', 'Randall', 'Yash', '(508) 555-7000', 3, 540, CAST('2015-08-28 00:00:00' AS SmallDateTime), 194.5700, 0.0000, 399.8500, 0.0000),
(63, 'Lou Gentile''s Flower Basket', '722 E Olive Ave', '', 'Fresno', 'CA', '93728', 'Anum', 'Trisha', '(209) 555-6643', 1, 570, CAST('2015-08-28 00:00:00' AS SmallDateTime), 74.3500, 0.0000, 0.0000, 0.0000),
(64, 'Texaco', 'PO Box 6070', '', 'Inglewood', 'CA', '90312', 'Oren', 'Grace', '', 3, 582, CAST('2015-08-28 00:00:00' AS SmallDateTime), 62.4800, 0.0000, 476.5000, 0.0000),
(65, 'The Drawing Board', 'PO Box 4758', '', 'Carol Stream', 'IL', '60197', 'Mckayla', 'Jeffery', '', 2, 551, CAST('2015-08-28 00:00:00' AS SmallDateTime), 366.6500, 0.0000, 502.1300, 0.0000),
(66, 'Ascom Hasler Mailing Systems', 'PO Box 895', '', 'Shelton', 'CT', '06484', 'Lewis', 'Darnell', '', 3, 532, CAST('2015-09-12 00:00:00' AS SmallDateTime), 522.2100, 0.0000, 716.6600, 0.0000),
(67, 'Bill Jones', 'Secretary Of State', 'PO Box 944230', 'Sacramento', 'CA', '94244', 'Deasia', 'Tristin', '', 3, 589, CAST('2015-09-12 00:00:00' AS SmallDateTime), 10.0000, 0.0000, 10.0000, 0.0000),
(68, 'Computer Library', '3502 W Greenway #7', '', 'Phoenix', 'AZ', '85023', 'Aryn', 'Leroy', '(602) 547-0331', 3, 540, CAST('2015-09-12 00:00:00' AS SmallDateTime), 196.2000, 0.0000, 0.0000, 0.0000),
(69, 'Frank E Wilber Co', '2437 N Sunnyside', '', 'Fresno', 'CA', '93727', 'Millerton', 'Johnathon', '(209) 555-1881', 3, 532, CAST('2015-09-12 00:00:00' AS SmallDateTime), 1934.7000, 0.0000, 1538.2400, 0.0000),
(70, 'Fresno Credit Bureau', 'PO Box 942', '', 'Fresno', 'CA', '93714', 'Braydon', 'Anne', '(209) 555-7900', 2, 555, CAST('2015-09-12 00:00:00' AS SmallDateTime), 2663.2600, 0.0000, 452.4700, 0.0000),
(71, 'The Fresno Bee', '1626 E Street', '', 'Fresno', 'CA', '93786', 'Colton', 'Leah', '(209) 555-4442', 2, 572, CAST('2015-09-12 00:00:00' AS SmallDateTime), 751.8300, 0.0000, 0.0000, 0.0000),
(72, 'Data Reproductions Corp', '4545 Glenmeade Lane', '', 'Auburn Hills', 'MI', '48326', 'Arodondo', 'Cesar', '(810) 555-3700', 3, 400, CAST('2015-10-09 00:00:00' AS SmallDateTime), 14624.8800, 0.0000, 0.0000, 0.0000),
(73, 'Executive Office Products', '353 E Shaw Ave', '', 'Fresno', 'CA', '93710', 'Danielson', 'Rachael', '(209) 555-1704', 2, 570, CAST('2015-10-09 00:00:00' AS SmallDateTime), 405.4800, 0.0000, 1361.7800, 0.0000),
(74, 'Leslie Company', 'PO Box 610', '', 'Olathe', 'KS', '66061', 'Alondra', 'Zev', '(800) 255-6210', 3, 570, CAST('2015-10-09 00:00:00' AS SmallDateTime), 139.6700, 0.0000, 0.0000, 0.0000),
(75, 'Retirement Plan Consultants', '6435 North Palm Ave, Ste 101', '', 'Fresno', 'CA', '93704', 'Edgardo', 'Salina', '(209) 555-7070', 3, 589, CAST('2015-10-09 00:00:00' AS SmallDateTime), 1660.0000, 0.0000, 1386.0000, 0.0000),
(76, 'Simon Direct Inc', '4 Cornwall Dr Ste 102', '', 'East Brunswick', 'NJ', '08816', 'Bradlee', 'Daniel', '(908) 555-7222', 2, 540, CAST('2015-10-09 00:00:00' AS SmallDateTime), 8662.5000, 0.0000, 0.0000, 0.0000),
(77, 'State Board Of Equalization', 'PO Box 942808', '', 'Sacramento', 'CA', '94208', 'Dean', 'Julissa', '(916) 555-4911', 1, 631, CAST('2015-10-09 00:00:00' AS SmallDateTime), 2433.0000, 0.0000, 3606.8300, 0.0000),
(78, 'The Presort Center', '1627 "E" Street', '', 'Fresno', 'CA', '93706', 'Marissa', 'Kyle', '(209) 555-6151', 3, 540, CAST('2015-10-09 00:00:00' AS SmallDateTime), 2377.4300, 0.0000, 0.0000, 0.0000),
(79, 'Valprint', 'PO Box 12332', '', 'Fresno', 'CA', '93777', 'Warren', 'Quentin', '(209) 555-3112', 3, 551, CAST('2015-10-09 00:00:00' AS SmallDateTime), 44995.7500, 0.0000, 19211.1200, 0.0000),
(80, 'Cardinal Business Media, Inc.', 'P O Box 7247-7844', '', 'Philadelphia', 'PA', '19170', 'Eulalia', 'Kelsey', '(215) 555-1500', 2, 540, CAST('2015-10-23 00:00:00' AS SmallDateTime), 2905.0000, 0.0000, 3867.7500, 0.0000),
(81, 'Wang Laboratories, Inc.', 'P.O. Box 21209', '', 'Pasadena', 'CA', '91185', 'Kapil', 'Robert', '(800) 555-0344', 2, 160, CAST('2015-10-23 00:00:00' AS SmallDateTime), 4343.7600, 0.0000, 24125.3800, 0.0000),
(82, 'Reiter''s Scientific & Pro Books', '2021 K Street Nw', '', 'Washington', 'DC', '20006', 'Rodolfo', 'Carlee', '(202) 555-5561', 2, 572, CAST('2015-10-28 00:00:00' AS SmallDateTime), 600.0000, 0.0000, 600.0000, 0.0000),
(83, 'Ingram', 'PO Box 845361', '', 'Dallas', 'TX', '75284', 'Yobani', 'Trey', '', 2, 572, CAST('2015-11-10 00:00:00' AS SmallDateTime), 4005.0000, 0.0000, 585.0000, 0.0000),
(84, 'Boucher Communications Inc', '1300 Virginia Dr. Ste 400', '', 'Fort Washington', 'PA', '19034', 'Carson', 'Julian', '(215) 555-8000', 3, 540, CAST('2015-11-14 00:00:00' AS SmallDateTime), 1150.0000, 0.0000, 0.0000, 0.0000),
(85, 'Champion Printing Company', '3250 Spring Grove Ave', '', 'Cincinnati', 'OH', '45225', 'Clifford', 'Jillian', '(800) 555-1957', 3, 540, CAST('2015-11-14 00:00:00' AS SmallDateTime), 10729.1400, 0.0000, 8095.2800, 0.0000),
(86, 'Computerworld', 'Department #1872', 'PO Box 61000', 'San Francisco', 'CA', '94161', 'Lloyd', 'Angel', '(617) 555-0700', 1, 572, CAST('2015-11-14 00:00:00' AS SmallDateTime), 11664.5000, 0.0000, 2245.0000, 0.0000),
(87, 'DMV Renewal', 'PO Box 942894', '', 'Sacramento', 'CA', '94294', 'Josey', 'Lorena', '', 4, 568, CAST('2015-11-14 00:00:00' AS SmallDateTime), 923.0000, 0.0000, 779.0000, 0.0000),
(88, 'Edward Data Services', '4775 E Miami River Rd', '', 'Cleves', 'OH', '45002', 'Helena', 'Jeanette', '(513) 555-3043', 1, 540, CAST('2015-11-14 00:00:00' AS SmallDateTime), 413.3600, 0.0000, 0.0000, 0.0000),
(89, 'Evans Executone Inc', '4918 Taylor Ct', '', 'Turlock', 'CA', '95380', 'Royce', 'Hannah', '', 1, 522, CAST('2015-11-14 00:00:00' AS SmallDateTime), 394.5500, 0.0000, 0.0000, 0.0000),
(90, 'Wakefield Co', '295 W Cromwell Ave Ste 106', '', 'Fresno', 'CA', '93711', 'Rothman', 'Nathanael', '(209) 555-4744', 2, 170, CAST('2015-11-14 00:00:00' AS SmallDateTime), 356.4800, 0.0000, 0.0000, 0.0000),
(91, 'McKesson Water Products', 'P O Box 7126', '', 'Pasadena', 'CA', '91109', 'Destin', 'Luciano', '(800) 555-7009', 2, 570, CAST('2015-11-14 00:00:00' AS SmallDateTime), 384.7100, 0.0000, 363.1300, 0.0000),
(92, 'Zip Print & Copy Center', 'PO Box 12332', '', 'Fresno', 'CA', '93777', 'Javen', 'Justin', '(233) 555-6400', 2, 540, CAST('2015-11-14 00:00:00' AS SmallDateTime), 5641.2100, 0.0000, 6186.2700, 0.0000),
(93, 'AT&T', 'PO Box 78225', '', 'Phoenix', 'AZ', '85062', 'Wesley', 'Alisha', '', 3, 522, CAST('2015-11-16 00:00:00' AS SmallDateTime), 15730.9700, 0.0000, 9231.3400, 0.0000),
(94, 'Abbey Office Furnishings', '4150 W Shaw Ave', '', 'Fresno', 'CA', '93722', 'Francis', 'Kyra', '(209) 555-8300', 2, 150, CAST('2015-11-19 00:00:00' AS SmallDateTime), 5515.3500, 0.0000, 1385.0800, 0.0000),
(95, 'Pacific Bell', '', '                              .', 'Sacramento', 'CA', '95887', 'Nickalus', 'Kurt', '(209) 555-7500', 2, 522, CAST('2015-11-25 00:00:00' AS SmallDateTime), 4711.7700, 0.0000, 4296.1200, 0.0000),
(96, 'Wells Fargo Bank', 'Business Mastercard', 'P.O. Box 29479', 'Phoenix', 'AZ', '85038', 'Damion', 'Mikayla', '(947) 555-3900', 2, 160, CAST('2015-11-25 00:00:00' AS SmallDateTime), 1107.3100, 0.0000, 1394.6800, 0.0000),
(97, 'Compuserve', 'Dept L-742', '', 'Columbus', 'OH', '43260', 'Armando', 'Jan', '(614) 555-8600', 2, 572, CAST('2015-11-26 00:00:00' AS SmallDateTime), 109.4500, 0.0000, 145.9600, 0.0000),
(98, 'American Express', 'Box 0001', '', 'Los Angeles', 'CA', '90096', 'Story', 'Kirsten', '(800) 555-3344', 2, 160, CAST('2015-11-28 00:00:00' AS SmallDateTime), 28740.1000, 556.1900, 40780.8300, 0.0000),
(99, 'Bertelsmann Industry Svcs. Inc', '28210 N Avenue Stanford', '', 'Valencia', 'CA', '91355', 'Potter', 'Lance', '(805) 555-0584', 3, 400, CAST('2015-11-28 00:00:00' AS SmallDateTime), 39420.5600, 0.0000, 42499.9400, 0.0000),
(100, 'Cahners Publishing Company', 'Citibank Lock Box 4026', '8725 W Sahara Zone 1127', 'The Lake', 'NV', '89163', 'Jacobsen', 'Samuel', '(301) 555-2162', 4, 540, CAST('2015-11-28 00:00:00' AS SmallDateTime), 2184.5000, 0.0000, 0.0000, 0.0000),
(101, 'California Business Machines', 'Gallery Plz', '5091 N Fresno', 'Fresno', 'CA', '93710', 'Rohansen', 'Anders', '(209) 555-5570', 2, 170, CAST('2015-11-28 00:00:00' AS SmallDateTime), 722.1600, 0.0000, 981.8300, 0.0000),
(102, 'Coffee Break Service', 'PO Box 1091', '', 'Fresno', 'CA', '93714', 'Smitzen', 'Jeffrey', '(209) 555-8700', 4, 570, CAST('2015-11-28 00:00:00' AS SmallDateTime), 706.9000, 0.0000, 816.5000, 0.0000),
(103, 'Dean Witter Reynolds', '9 River Pk Pl E 400', '', 'Fresno', 'CA', '93720', 'Johnson', 'Vance', '(209) 555-7171', 5, 589, CAST('2015-11-28 00:00:00' AS SmallDateTime), 29522.5000, 0.0000, 17967.5000, 0.0000),
(104, 'Digital Dreamworks', '5070 N Sixth Ste. 71', '', 'Fresno', 'CA', '93711', 'Elmert', 'Ron', '', 3, 589, CAST('2015-11-28 00:00:00' AS SmallDateTime), 5000.0000, 0.0000, 0.0000, 0.0000),
(105, 'Dristas Groom & Mccormick', '7112 N Fresno St Ste 200', '', 'Fresno', 'CA', '93720', 'Aaronsen', 'Thom', '(209) 555-8484', 3, 591, CAST('2015-11-28 00:00:00' AS SmallDateTime), 9082.0000, 0.0000, 8173.0000, 0.0000),
(106, 'Ford Motor Credit Company', 'Dept 0419', '', 'Los Angeles', 'CA', '90084', 'Snyder', 'Karen', '(800) 555-7000', 3, 582, CAST('2015-11-28 00:00:00' AS SmallDateTime), 5535.2000, 0.0000, 6039.8100, 0.0000),
(107, 'Franchise Tax Board', 'PO Box 942857', '', 'Sacramento', 'CA', '94257', 'Prado', 'Anita', '', 4, 507, CAST('2015-11-28 00:00:00' AS SmallDateTime), 12632.5000, 0.0000, 800.0000, 0.0000),
(108, 'Gostanian General Building', '427 W Bedford #102', '', 'Fresno', 'CA', '93711', 'Bragg', 'Walter', '(209) 555-5100', 4, 523, CAST('2015-11-28 00:00:00' AS SmallDateTime), 450.0000, 0.0000, 0.0000, 0.0000),
(109, 'Kent H Landsberg Co', 'File No 72686', 'PO Box 61000', 'San Francisco', 'CA', '94160', 'Stevens', 'Wendy', '(916) 555-8100', 3, 540, CAST('2015-11-28 00:00:00' AS SmallDateTime), 5711.1200, 0.0000, 1473.7000, 0.0000),
(110, 'Malloy Lithographing Inc', '5411 Jackson Road', 'PO Box 1124', 'Ann Arbor', 'MI', '48106', 'Regging', 'Abe', '(313) 555-6113', 3, 400, CAST('2015-11-28 00:00:00' AS SmallDateTime), 213039.6500, 0.0000, 192213.0100, 0.0000),
(111, 'Net Asset, Llc', '1315 Van Ness Ave Ste. 103', '', 'Fresno', 'CA', '93721', 'Kraggin', 'Laura', '', 1, 572, CAST('2015-11-28 00:00:00' AS SmallDateTime), 581.2100, 0.0000, 0.0000, 0.0000),
(112, 'Office Depot', 'File No 81901', '', 'Los Angeles', 'CA', '90074', 'Pinsippi', 'Val', '(209) 555-1711', 3, 570, CAST('2015-11-28 00:00:00' AS SmallDateTime), 3916.9100, 0.0000, 4197.3400, 0.0000),
(113, 'Pollstar', '4697 W Jacquelyn Ave', '', 'Fresno', 'CA', '93722', 'Aranovitch', 'Robert', '(209) 555-2631', 5, 520, CAST('2015-11-28 00:00:00' AS SmallDateTime), 17500.0000, 0.0000, 19750.0000, 0.0000),
(114, 'Postmaster', 'Postage Due Technician', '1900 E Street', 'Fresno', 'CA', '93706', 'Finklestein', 'Fyodor', '(209) 555-7785', 1, 552, CAST('2015-11-28 00:00:00' AS SmallDateTime), 1875.0000, 0.0000, 1175.0000, 0.0000),
(115, 'Roadway Package System, Inc', 'Dept La 21095', '', 'Pasadena', 'CA', '91185', 'Smith', 'Sam', '', 4, 553, CAST('2015-11-28 00:00:00' AS SmallDateTime), 614.1500, 0.0000, 327.2300, 0.0000),
(116, 'State of California', 'Employment Development Dept', 'PO Box 826276', 'Sacramento', 'CA', '94230', 'Articunia', 'Mercedez', '(209) 555-5132', 1, 631, CAST('2015-11-28 00:00:00' AS SmallDateTime), 22300.4600, 0.0000, 17568.5800, 0.0000),
(117, 'Suburban Propane', '2874 S Cherry Ave', '', 'Fresno', 'CA', '93706', 'Spivak', 'Harold', '(209) 555-2770', 3, 521, CAST('2015-11-28 00:00:00' AS SmallDateTime), 61.9400, 0.0000, 32.3400, 0.0000),
(118, 'Unocal', 'P.O. Box 860070', '', 'Pasadena', 'CA', '91186', 'Bluzinski', 'Rachael', '(415) 555-7600', 3, 582, CAST('2015-11-28 00:00:00' AS SmallDateTime), 1870.2800, 0.0000, 1140.6700, 0.0000),
(119, 'Yesmed, Inc', 'PO Box 2061', '', 'Fresno', 'CA', '93718', 'Hernandez', 'Reba', '(209) 555-0600', 2, 589, CAST('2015-11-28 00:00:00' AS SmallDateTime), 48690.5100, 0.0000, 51420.0300, 0.0000),
(120, 'Dataforms/West', '1617 W. Shaw Avenue', 'Suite F', 'Fresno', 'CA', '93711', 'Church', 'Charlie', '', 3, 551, CAST('2015-11-30 00:00:00' AS SmallDateTime), 12108.4400, 0.0000, 13232.2200, 0.0000),
(121, 'Zylka Design', '3467 W Shaw Ave #103', '', 'Fresno', 'CA', '93711', 'Ronaldsen', 'Jaime', '(209) 555-8625', 3, 403, CAST('2015-11-30 00:00:00' AS SmallDateTime), 30486.4400, 0.0000, 5311.4800, 0.0000),
(122, 'United Parcel Service', 'P.O. Box 505820', '', 'Reno', 'NV', '88905', 'Beauregard', 'Violet', '(800) 555-0855', 3, 553, CAST('2015-12-02 00:00:00' AS SmallDateTime), 93601.9900, 0.0000, 76238.9600, 0.0000),
(123, 'Federal Express Corporation', 'P.O. Box 1140', 'Dept A', 'Memphis', 'TN', '38101', 'Bucket', 'Charlie', '(209) 555-4091', 3, 553, CAST('2015-12-05 00:00:00' AS SmallDateTime), 29742.9800, 0.0000, 19893.6100, 0.0000)
SET IDENTITY_INSERT Vendors OFF

/****** Object:  Index City    ******/
CREATE NONCLUSTERED INDEX City ON Customers(
	CustCity ASC
)

/****** Object:  Index PostalCode    ******/
CREATE NONCLUSTERED INDEX PostalCode ON Customers(
	CustZip ASC
)

/****** Object:  Index Region    ******/
CREATE NONCLUSTERED INDEX Region ON Customers(
	CustState ASC
)

/****** Object:  Index IX_VendorName    ******/
ALTER TABLE Vendors 
ADD CONSTRAINT IX_VendorName UNIQUE NONCLUSTERED (
	VendorName ASC
)

ALTER TABLE Sample 
ADD CONSTRAINT DF_Sample_Text  DEFAULT ('None') FOR Color

ALTER TABLE Vendors 
ADD CONSTRAINT DF_Vendors_TermsID  DEFAULT (3) FOR TermsID

ALTER TABLE Vendors 
ADD CONSTRAINT DF_Vendors_AccountNo  DEFAULT (570) FOR AccountNo

ALTER TABLE Vendors 
ADD CONSTRAINT DF_Vendors_YTDPurchases  DEFAULT (0) FOR YTDPurchases

ALTER TABLE Vendors 
ADD CONSTRAINT DF_Vendors_YTDReturns  DEFAULT (0) FOR YTDReturns

ALTER TABLE Vendors 
ADD CONSTRAINT DF_Vendors_LastYTDPurchases  DEFAULT (0) FOR LastYTDPurchases

ALTER TABLE Vendors 
ADD CONSTRAINT DF_Vendors_LastYTDReturns  DEFAULT (0) FOR LastYTDReturns

ALTER TABLE SalesTotals  WITH CHECK 
ADD CONSTRAINT FK_SalesTotals_SalesReps FOREIGN KEY(RepID)
REFERENCES SalesReps (RepID)

ALTER TABLE SalesTotals CHECK CONSTRAINT FK_SalesTotals_SalesReps


