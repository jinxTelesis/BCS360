SET IDENTITY_INSERT Orders2 ON;

INSERT INTO Orders2 (OrderID, CustomerID, OrderDate, ShipAmount, TaxAmount, ShipDate, ShipAddressID, CardType, CardNumber, CardExpires, BillingAddressID) VALUES
(1, 1, '2016-03-28 09:40:28.000', 5.00, 58.75, '2016-03-31 09:41:11.000', 1, 'Visa', '4111111111111111', '04/2018', 2), 
(2, 2, '2016-03-28 11:23:20.000', 5.00, 21.27, '2016-03-31 11:24:03.000', 3, 'Visa', '4012888888881881', '08/2020', 3), 
(3, 1, '2016-03-29 09:44:58.000', 10.00, 102.29, '2016-04-01 09:45:41.000', 1, 'Visa', '4111111111111111', '06/2020', 2), 
(4, 3, '2016-03-30 15:22:31.000', 10.00, 117.50, '2016-04-02 15:23:14.000', 4, 'American Express', '3782822463100005', '02/2017', 4), 
(5, 4, '2016-03-31 05:43:11.000', 5.00, 20.93, '2016-04-03 05:43:54.000', 5, 'Visa', '4111111111111111', '09/2019', 6), 
(6, 5, '2016-03-31 18:37:22.000', 5.00, 20.93, '2016-04-03 18:38:05.000', 7, 'Discover', '6011111111111117', '04/2020', 7), 
(7, 6, '2016-04-01 23:11:12.000', 15.00, 107.80, '2016-04-04 23:11:55.000', 8, 'MasterCard', '5555555555554444', '12/2018', 8), 
(8, 7, '2016-04-02 11:26:38.000', 5.00, 47.60, '2016-04-05 11:27:21.000', 9, 'Visa', '4012888888881881', '04/2017', 10), 
(9, 4, '2016-04-03 12:22:31.000', 15.00, 102.75, '2016-04-06 12:23:14.000', 5, 'Visa', '4111111111111111', '01/2020', 6), 
(10, 8, '2016-04-03 14:59:20.000', 5.00, 26.25, '2016-04-06 15:00:03.000', 11, 'Visa', '4111111111111111', '08/2019', 12), 
(11, 9, '2016-04-04 06:24:44.000', 5.00, 34.25, '2016-04-07 06:25:27.000', 13, 'Visa', '4012888888881881', '08/2019', 13), 
(12, 10, '2016-04-04 08:15:12.000', 5.00, 84.57, '2016-04-07 08:15:55.000', 14, 'Visa', '4111111111111111', '03/2017', 14), 
(13, 11, '2016-04-04 11:20:31.000', 5.00, 47.60, '2016-04-07 11:21:14.000', 15, 'Visa', '4111111111111111', '02/2020', 16), 
(14, 12, '2016-04-05 09:24:53.000', 10.00, 117.50, '2016-04-08 09:25:36.000', 17, 'Visa', '4111111111111111', '11/2018', 17), 
(15, 13, '2016-04-05 14:52:17.000', 5.00, 39.20, '2016-04-08 14:53:00.000', 18, 'American Express', '3782822463100005', '02/2018', 18), 
(16, 14, '2016-04-06 07:53:42.000', 10.00, 51.97, '2016-04-09 07:54:25.000', 19, 'Visa', '4111111111111111', '01/2019', 19), 
(17, 15, '2016-04-06 17:24:28.000', 5.00, 34.25, '2016-04-09 17:25:11.000', 20, 'Visa', '4111111111111111', '07/2020', 21), 
(18, 16, '2016-04-06 18:41:53.000', 5.00, 34.25, '2016-04-09 18:42:36.000', 22, 'MasterCard', '5555555555554444', '12/2017', 22), 
(19, 17, '2016-04-08 12:21:31.000', 10.00, 117.50, '2016-04-11 12:22:14.000', 23, 'Visa', '4012888888881881', '12/2017', 23), 
(20, 18, '2016-04-10 09:33:23.000', 5.00, 47.60, '2016-04-13 09:34:06.000', 24, 'Visa', '4111111111111111', '05/2017', 24), 
(21, 19, '2016-04-11 08:21:32.000', 10.00, 39.20, '2016-04-14 08:22:15.000', 25, 'Discover', '6011111111111117', '02/2019', 26), 
(22, 8, '2016-04-12 12:26:52.000', 5.00, 84.57, '2016-04-15 12:27:35.000', 11, 'Visa', '4111111111111111', '03/2020', 12), 
(23, 20, '2016-04-14 07:59:31.000', 5.00, 34.25, '2016-04-17 08:00:14.000', 27, 'Visa', '4012888888881881', '03/2019', 27), 
(24, 21, '2016-04-17 17:40:22.000', 5.00, 34.25, '2016-04-20 17:41:05.000', 28, 'Visa', '4111111111111111', '04/2018', 28), 
(25, 22, '2016-04-20 08:23:32.000', 10.00, 117.50, '2016-04-23 08:24:15.000', 29, 'Visa', '4111111111111111', '09/2018', 29), 
(26, 23, '2016-04-20 08:14:45.000', 5.00, 0.00, '2016-04-23 08:15:28.000', 30, 'American Express', '3782822463100005', '08/2017', 30), 
(27, 24, '2016-04-20 09:17:52.000', 5.00, 84.57, '2016-04-23 09:18:35.000', 31, 'Visa', '4111111111111111', '02/2018', 31), 
(28, 25, '2016-04-21 17:52:24.000', 5.00, 34.30, '2016-04-24 17:53:07.000', 32, 'Visa', '4111111111111111', '08/2019', 32), 
(29, 4, '2016-04-25 23:36:41.000', 25.00, 196.00, '2016-04-28 23:37:24.000', 5, 'Visa', '4012888888881881', '03/2017', 6), 
(30, 26, '2016-04-27 16:21:31.000', 5.00, 26.25, '2016-04-30 16:22:14.000', 33, 'Visa', '4111111111111111', '02/2018', 33), 
(31, 27, '2016-04-29 06:47:14.000', 10.00, 118.82, '2016-05-02 06:47:57.000', 34, 'Visa', '4111111111111111', '01/2018', 34), 
(32, 18, '2016-05-01 01:23:23.000', 5.00, 84.57, NULL, 24, 'Discover', '6011111111111117', '02/2018', 24), 
(33, 28, '2016-05-01 09:11:51.000', 10.00, 41.86, '2016-05-04 09:12:34.000', 35, 'American Express', '3782822463100005', '04/2017', 35), 
(34, 29, '2016-05-02 11:36:12.000', 5.00, 58.75, '2016-05-05 11:36:55.000', 36, 'Visa', '4111111111111111', '06/2017', 37), 
(35, 30, '2016-05-04 03:52:23.000', 5.00, 39.20, '2016-05-07 03:53:06.000', 38, 'Visa', '4111111111111111', '09/2018', 38), 
(36, 31, '2016-05-04 12:31:33.000', 5.00, 21.27, '2016-05-07 12:32:16.000', 39, 'Visa', '4012888888881881', '11/2018', 39), 
(37, 32, '2016-05-06 14:15:21.000', 5.00, 84.57, '2016-05-09 14:16:04.000', 40, 'MasterCard', '5555555555554444', '02/2017', 41), 
(38, 33, '2016-05-08 11:41:24.000', 10.00, 117.50, NULL, 42, 'Visa', '4111111111111111', '04/2018', 43), 
(39, 29, '2016-05-08 22:22:26.000', 5.00, 0.00, NULL, 36, 'Visa', '4012888888881881', '01/2018', 37), 
(40, 34, '2016-05-08 21:41:29.000', 5.00, 34.25, NULL, 44, 'American Express', '3782822463100005', '08/2017', 44), 
(41, 35, '2016-05-09 07:52:55.000', 10.00, 55.52, NULL, 45, 'Visa', '4111111111111111', '05/2018', 45)

SET IDENTITY_INSERT Orders2 OFF;
