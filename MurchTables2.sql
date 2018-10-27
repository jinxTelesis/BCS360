

/****** Object:  Table Customers     ******/
CREATE TABLE Customers(
	CustID int IDENTITY(1,1) NOT NULL,
	CustFirstName nvarchar(50) NULL,
	CustLastName nvarchar(50) NOT NULL,
	CustAddress nvarchar(255) NOT NULL,
	CustCity nvarchar(50) NOT NULL,
	CustState nvarchar(20) NOT NULL,
	CustZip nvarchar(20) NOT NULL,
	CustPhone nvarchar(30) NOT NULL,
	CustFax nvarchar(30) NULL,
 CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED(
	CustID ASC
 )
)


/****** Object:  Table Items     ******/
CREATE TABLE Items(
	ItemID int NOT NULL,
	Title nvarchar(50) NOT NULL,
	Artist nvarchar(50) NOT NULL,
	UnitPrice money NOT NULL
)


/****** Object:  Table OrderDetails     ******/
CREATE TABLE OrderDetails(
	OrderID int NOT NULL,
	ItemID int NOT NULL,
	Quantity smallint NOT NULL
)


/****** Object:  Table Orders     ******/
CREATE TABLE Orders(
	OrderID int NOT NULL,
	CustID int NOT NULL,
	OrderDate datetime NOT NULL,
	ShippedDate datetime NULL
)


SET IDENTITY_INSERT Customers ON 
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES 
(1, 'Korah', 'Blanca', '1555 W Lane Ave', 'Columbus', 'OH', '43221', '6145554435', '6145553928'),
(2, 'Yash', 'Randall', '11 E Rancho Madera Rd', 'Madison', 'WI', '53707', '2095551205', '2095552262'),
(3, 'Johnathon', 'Millerton', '60 Madison Ave', 'New York', 'NY', '10010', '2125554800', NULL),
(4, 'Mikayla', 'Damion', '2021 K Street Nw', 'Washington', 'DC', '20006', '2025555561', NULL),
(5, 'Kendall', 'Mayte', '4775 E Miami River Rd', 'Cleves', 'OH', '45002', '5135553043', NULL),
(6, 'Kaitlin', 'Hostlery', '3250 Spring Grove Ave', 'Cincinnati', 'OH', '45225', '8005551957', '8005552826'),
(7, 'Derek', 'Chaddick', '9022 E Merchant Wy', 'Fairfield', 'IA', '52556', '5155556130', NULL),
(8, 'Deborah', 'Damien', '415 E Olive Ave', 'Fresno', 'CA', '93728', '5595558060', NULL),
(9, 'Karina', 'Lacy', '882 W Easton Wy', 'Los Angeles', 'CA', '90084', '8005557000', NULL),
(10, 'Kurt', 'Nickalus', '28210 N Avenue Stanford', 'Valencia', 'CA', '91355', '8055550584', '8055556689'),
(11, 'Kelsey', 'Eulalia', '7833 N Ridge Rd', 'Sacramento', 'CA', '95887', '2095557500', '2095551302'),
(12, 'Anders', 'Rohansen', '12345 E 67th Ave NW', 'Takoma Park', 'MD', '24512', '3385556772', NULL),
(13, 'Thalia', 'Neftaly', '2508 W Shaw Ave', 'Fresno', 'CA', '93711', '5595556245', NULL),
(14, 'Gonzalo', 'Keeton', '12 Daniel Road', 'Fairfield', 'NJ', '07004', '2015559742', NULL),
(15, 'Ania', 'Irvin', '1099 N Farcourt St', 'Orange', 'CA', '92807', '7145559000', NULL),
(16, 'Dakota', 'Baylee', '1033 N Sycamore Ave.', 'Los Angeles', 'CA', '90038', '2135554322', NULL),
(17, 'Samuel', 'Jacobsen', '3433 E Widget Ave', 'Palo Alto', 'CA', '92711', '4155553434', NULL),
(18, 'Justin', 'Javen', '828 S Broadway', 'Tarrytown', 'NY', '10591', '8005550037', NULL),
(19, 'Kyle', 'Marissa', '789 E Mercy Ave', 'Phoenix', 'AZ', '85038', '9475553900', NULL),
(20, 'Erick', 'Kaleigh', 'Five Lakepointe Plaza, Ste 500', 'Charlotte', 'NC', '28217', '7045553500', NULL),
(21, 'Marvin', 'Quintin', '2677 Industrial Circle Dr', 'Columbus', 'OH', '43260', '6145558600', '6145557580'),
(22, 'Rashad', 'Holbrooke', '3467 W Shaw Ave #103', 'Fresno', 'CA', '93711', '5595558625', '5595558495'),
(23, 'Trisha', 'Anum', '627 Aviation Way', 'Manhatttan Beach', 'CA', '90266', '3105552732', NULL),
(24, 'Julian', 'Carson', '372 San Quentin', 'San Francisco', 'CA', '94161', '6175550700', NULL),
(25, 'Kirsten', 'Story', '2401 Wisconsin Ave NW', 'Washington', 'DC', '20559', '2065559115', NULL)
SET IDENTITY_INSERT Customers OFF


INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES 
(1, 'Umami In Concert', 'Umami', 17.9500),
(2, 'Race Car Sounds', 'The Ubernerds', 13.0000),
(3, 'No Rest For The Weary', 'No Rest For The Weary', 16.9500),
(4, 'More Songs About Structures and Comestibles', 'No Rest For The Weary', 17.9500),
(5, 'On The Road With Burt Ruggles', 'Burt Ruggles', 17.5000),
(6, 'No Fixed Address', 'Sewed the Vest Pocket', 16.9500),
(7, 'Rude Noises', 'Jess & Odie', 13.0000),
(8, 'Burt Ruggles: An Intimate Portrait', 'Burt Ruggles', 17.9500),
(9, 'Zone Out With Umami', 'Umami', 16.9500),
(10, 'Etcetera', 'Onn & Onn', 17.0000)


INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES 
(381, 1, 1),
(601, 9, 1),
(442, 1, 1),
(523, 9, 1),
(630, 5, 1),
(778, 1, 1),
(693, 10, 1),
(118, 1, 1),
(264, 7, 1),
(607, 10, 1),
(624, 7, 1),
(658, 1, 1),
(800, 5, 1),
(158, 3, 1),
(321, 10, 1),
(687, 6, 1),
(827, 6, 1),
(144, 3, 1),
(264, 8, 1),
(479, 1, 2),
(630, 6, 2),
(796, 5, 1),
(97, 4, 1),
(601, 5, 1),
(773, 10, 1),
(800, 1, 1),
(29, 10, 1),
(70, 1, 1),
(97, 8, 1),
(165, 4, 1),
(180, 4, 1),
(231, 10, 1),
(392, 8, 1),
(413, 10, 1),
(491, 6, 1),
(494, 2, 1),
(606, 8, 1),
(607, 3, 1),
(651, 3, 1),
(703, 4, 1),
(796, 2, 1),
(802, 2, 1),
(802, 3, 1),
(824, 7, 2),
(829, 1, 1),
(550, 4, 1),
(796, 7, 1),
(829, 2, 1),
(693, 6, 1),
(29, 3, 1),
(32, 7, 1),
(242, 1, 1),
(298, 1, 1),
(479, 4, 1),
(548, 9, 1),
(627, 9, 1),
(778, 3, 1),
(687, 8, 1),
(19, 5, 1),
(89, 4, 1),
(242, 6, 1),
(264, 4, 1),
(550, 1, 1),
(631, 10, 1),
(693, 7, 3),
(824, 3, 1),
(829, 5, 1),
(829, 9, 1)


INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES 
(19, 1, CAST('2014-06-23 00:00:00.000' AS DateTime), CAST('2014-06-28 00:00:00.000' AS DateTime)),
(29, 8, CAST('2014-07-05 00:00:00.000' AS DateTime), CAST('2014-07-11 00:00:00.000' AS DateTime)),
(32, 11, CAST('2014-07-10 00:00:00.000' AS DateTime), CAST('2014-07-13 00:00:00.000' AS DateTime)),
(45, 2, CAST('2014-07-25 00:00:00.000' AS DateTime), CAST('2014-07-30 00:00:00.000' AS DateTime)),
(70, 10, CAST('2014-08-28 00:00:00.000' AS DateTime), CAST('2014-09-07 00:00:00.000' AS DateTime)),
(89, 22, CAST('2014-09-20 00:00:00.000' AS DateTime), CAST('2014-09-22 00:00:00.000' AS DateTime)),
(97, 20, CAST('2014-09-29 00:00:00.000' AS DateTime), CAST('2014-10-02 00:00:00.000' AS DateTime)),
(118, 3, CAST('2014-10-24 00:00:00.000' AS DateTime), CAST('2014-10-28 00:00:00.000' AS DateTime)),
(144, 17, CAST('2014-11-21 00:00:00.000' AS DateTime), CAST('2014-11-29 00:00:00.000' AS DateTime)),
(158, 9, CAST('2014-12-04 00:00:00.000' AS DateTime), CAST('2014-12-20 00:00:00.000' AS DateTime)),
(165, 14, CAST('2014-12-11 00:00:00.000' AS DateTime), CAST('2014-12-13 00:00:00.000' AS DateTime)),
(180, 24, CAST('2014-12-25 00:00:00.000' AS DateTime), CAST('2015-01-30 00:00:00.000' AS DateTime)),
(231, 15, CAST('2015-02-14 00:00:00.000' AS DateTime), CAST('2015-02-22 00:00:00.000' AS DateTime)),
(242, 23, CAST('2015-02-24 00:00:00.000' AS DateTime), CAST('2015-03-06 00:00:00.000' AS DateTime)),
(264, 9, CAST('2015-03-15 00:00:00.000' AS DateTime), CAST('2015-03-18 00:00:00.000' AS DateTime)),
(298, 18, CAST('2015-04-18 00:00:00.000' AS DateTime), CAST('2015-05-22 00:00:00.000' AS DateTime)),
(321, 2, CAST('2015-05-09 00:00:00.000' AS DateTime), CAST('2015-06-05 00:00:00.000' AS DateTime)),
(381, 7, CAST('2015-07-08 00:00:00.000' AS DateTime), CAST('2015-07-16 00:00:00.000' AS DateTime)),
(392, 19, CAST('2015-07-16 00:00:00.000' AS DateTime), CAST('2015-07-23 00:00:00.000' AS DateTime)),
(413, 17, CAST('2015-08-05 00:00:00.000' AS DateTime), CAST('2015-09-11 00:00:00.000' AS DateTime)),
(442, 5, CAST('2015-08-28 00:00:00.000' AS DateTime), CAST('2015-09-03 00:00:00.000' AS DateTime)),
(479, 1, CAST('2015-09-30 00:00:00.000' AS DateTime), CAST('2015-11-03 00:00:00.000' AS DateTime)),
(491, 16, CAST('2015-10-08 00:00:00.000' AS DateTime), CAST('2015-10-14 00:00:00.000' AS DateTime)),
(494, 4, CAST('2015-10-10 00:00:00.000' AS DateTime), CAST('2015-10-14 00:00:00.000' AS DateTime)),
(523, 3, CAST('2015-11-07 00:00:00.000' AS DateTime), CAST('2015-11-15 00:00:00.000' AS DateTime)),
(548, 2, CAST('2015-11-22 00:00:00.000' AS DateTime), CAST('2015-12-18 00:00:00.000' AS DateTime)),
(550, 17, CAST('2015-11-23 00:00:00.000' AS DateTime), CAST('2015-12-03 00:00:00.000' AS DateTime)),
(601, 16, CAST('2015-12-21 00:00:00.000' AS DateTime), CAST('2015-12-27 00:00:00.000' AS DateTime)),
(606, 6, CAST('2015-12-25 00:00:00.000' AS DateTime), CAST('2016-01-02 00:00:00.000' AS DateTime)),
(607, 20, CAST('2015-12-25 00:00:00.000' AS DateTime), CAST('2016-01-04 00:00:00.000' AS DateTime)),
(624, 2, CAST('2016-01-04 00:00:00.000' AS DateTime), CAST('2016-01-09 00:00:00.000' AS DateTime)),
(627, 17, CAST('2016-01-05 00:00:00.000' AS DateTime), CAST('2016-01-10 00:00:00.000' AS DateTime)),
(630, 20, CAST('2016-01-08 00:00:00.000' AS DateTime), CAST('2016-01-18 00:00:00.000' AS DateTime)),
(631, 21, CAST('2016-01-09 00:00:00.000' AS DateTime), CAST('2016-01-11 00:00:00.000' AS DateTime)),
(651, 12, CAST('2016-01-19 00:00:00.000' AS DateTime), CAST('2016-02-02 00:00:00.000' AS DateTime)),
(658, 12, CAST('2016-01-23 00:00:00.000' AS DateTime), CAST('2016-02-02 00:00:00.000' AS DateTime)),
(687, 17, CAST('2016-02-05 00:00:00.000' AS DateTime), CAST('2016-02-08 00:00:00.000' AS DateTime)),
(693, 9, CAST('2016-02-07 00:00:00.000' AS DateTime), CAST('2016-02-19 00:00:00.000' AS DateTime)),
(703, 19, CAST('2016-02-12 00:00:00.000' AS DateTime), CAST('2016-02-19 00:00:00.000' AS DateTime)),
(773, 25, CAST('2016-03-11 00:00:00.000' AS DateTime), CAST('2016-03-13 00:00:00.000' AS DateTime)),
(778, 13, CAST('2016-03-12 00:00:00.000' AS DateTime), CAST('2016-03-21 00:00:00.000' AS DateTime)),
(796, 17, CAST('2016-03-19 00:00:00.000' AS DateTime), CAST('2016-03-26 00:00:00.000' AS DateTime)),
(800, 19, CAST('2016-03-21 00:00:00.000' AS DateTime), CAST('2016-03-28 00:00:00.000' AS DateTime)),
(802, 2, CAST('2016-03-21 00:00:00.000' AS DateTime), CAST('2016-03-31 00:00:00.000' AS DateTime)),
(824, 1, CAST('2016-04-01 00:00:00.000' AS DateTime), NULL),
(827, 18, CAST('2016-04-02 00:00:00.000' AS DateTime), NULL),
(829, 9, CAST('2016-04-02 00:00:00.000' AS DateTime), NULL)
