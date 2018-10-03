SET IDENTITY_INSERT tblProducts3 ON;
INSERT INTO tblProducts3(ProductID,CategoryID,ProductCode,ProductName,Description,ListPrice,DiscountPercent,DateAdded) VALUES
(1,1,'aaa','guitar','double slide electric guitar',100.00,90.00,'10-8-2018'),
(2,2,'aab','guitar','single slide electric guitar',100.00,90.00,'10-7-2018'),
(3,1,'aac','guitar','no slide electric guitar',100.00,80.00,'11-7-2018'),
(4,1,'aad','guitar','no slide electric guitar with blue strips',100.00,80.00,'11-7-2018'),
(5,2,'aae','guitar','base guitar',500,180.00,'11-7-2017'),
(6,2,'aaf','guitar','fancy base guitar',700,180,'11-7-2017'),
(7,2,'aag','guitar','fancy base guitar',7250,4500,'11-7-2017'),
(8,3,'aah','guitar','white drums',7250,5000,'11-7-2017'),
(9,3,'aai','drums','blue drums',100,75,'11-7-2017'),
(10,3,'aaj','drums','black drums',120,75,'9-7-2017'),
(11,3,'aak','drums','brown drums',150,100,'9-7-2017'),
(12,4,'aal','sax','brass sax',400,350,'9-7-2017'),
(13,4,'aam','sax','copper sax',500,350,'9-7-2017'),
(14,4,'aan','sax','silver sax',1200,750,'9-7-2017'),
(15,4,'aao','sax','gold sax',10000,9000,'9-7-2017'
);

SET IDENTITY_INSERT tblProducts3 OFF;
