CREATE TABLE tblLocation -- first
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

CREATE TABLE tblInstructor -- third
(
InstructorID int NOT NULL PRIMARY KEY,
InstructorFName varchar(30) NOT NULL,
InstructorLName varchar(30) NOT NULL,
InstructorRate float default 10.00 NOT NULL,
InstructorRating varchar(1) NULL
);

CREATE TABLE tblProducts -- fourth
(
ProductID int NOT NULL PRIMARY KEY,
Cost float NOT NULL,
SpecialTax float NULL,
ProductMake varchar(15) NULL,
ProductName varchar(15) NOT NULL,
ProductColor varchar(1) NULL,
ProductSize varchar(3) NULL,
ProductUnique bit NOT NULL,
ProductRentalRate float NULL,
ProductVendor int NOT NULL REFERENCES tblVendor(VendorID) -- 
);

CREATE TABLE tblCustAddress
(
AddressId int NOT NULL IDENTITY PRIMARY KEY,
--CustomerID int NOT NULL, -- waiting on ref this would be circular no?
StreetNum float NOT NULL,
StreetName varchar(20) NOT NULL,
City varchar(25) NOT NULL,
state varchar(2) NULL,
Zip int NOT NULL,
-- Country varchar(3) NOT NULL, -- code
AddressType varchar(1) NOT NULL
);

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
);

CREATE TABLE tblServiceOrder
(
ServiceOrdID int NOT NULL PRIMARY KEY,
ServiceStateDate Date,
ServiceEndDate Date,
CustomerID int NOT NULL REFERENCES tblCustomers(CustomerID), -- fk
InstrucServiceRate int NOT NULL REFERENCES tblInstructor(InstructorID), -- fk
);

CREATE TABLE tblOrderItems --Cost float NOT NULL,
(
ItemID int NOT NULL IDENTITY PRIMARY KEY,
ItemPrice int NOT NULL,
DiscountAmount int NOT NULL,
Quantity int NOT NULL,
);

CREATE TABLE tblRental
(
RentalID int NOT NULL PRIMARY KEY,
StartDate date,
EndDate date,
ProductIDRentalRate int REFERENCES tblProducts(ProductID), -- fk
CustomerID int REFERENCES tblCustomers(CustomerID), -- fk
);


CREATE TABLE tblOrder -- edit order 
(
OrderID int NOT NULL IDENTITY PRIMARY KEY,
CustomerID int REFERENCES tblCustomers(CustomerID),
ShipTo int REFERENCES tblCustAddress(AddressId), -- FK
BillTo int REFERENCES tblCustAddress(AddressId), -- FK
--Product int REFERENCES tblProducts(ProductID), -- FK
ItemsID int REFERENCES tblOrderItems(ItemID),
Paid bit NOT NULL,
DateSent Date NULL,
--Quantity int NOT NULL
);







