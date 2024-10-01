CREATE DATABASE Finance;
USE Finance;

CREATE TABLE Applicants (
    Applicant_ID INT PRIMARY KEY AUTO_INCREMENT,
    Loan_ID VARCHAR(10),
    Gender VARCHAR(10),
    Married VARCHAR(10),
    Dependents INT,
    Education VARCHAR(20),
    Self_Employed VARCHAR(10),
    ApplicantIncome DECIMAL(10, 2),
    CoapplicantIncome DECIMAL(10, 2),
    Credit_History DECIMAL(2, 1),
    Property_Area VARCHAR(20));            

DESC Applicants;
DESC Loans;

INSERT INTO Applicants
(Applicant_ID, Loan_ID, Gender, Married, Dependents, Education, Self_Employed, ApplicantIncome,
 CoapplicantIncome, Credit_History, Property_Area)
VALUES
(0,'LP001003','Male','Yes',1,'Graduate','No',4583,1508,1,'Rural'),
(1,'LP001005','Male','Yes',0,'Graduate','Yes',3000,0,1,'Urban'),
(2,'LP001006','Male','Yes',0,'Graduate','No',2583,2358,1,'Urban'),
(3,'LP001008','Male','No',0,'Graduate','No',6000,0,1,'Urban'),
(4,'LP001013','Male','Yes',0,'Graduate','No',2333,1516,1,'Urban'),
(5,'LP001024','Male','Yes',2,'Graduate','No',3200,700,1,'Urban'),
(6,'LP001027','Male','Yes',2,'Graduate',NULL,2500,1840,1,'Urban'),
(7,'LP001029','Male','No',0,'Graduate','No',1853,2840,1,'Rural'),
(8,'LP001030','Male','Yes',2,'Graduate','No',1299,1086,1,'Urban'),
(9,'LP001032','Male','No',0,'Graduate','No',4950,0,1,'Urban'),
(10,'LP001034','Male','No',1,'Graduate','No',3596,0,NULL,'Urban'),
(11,'LP001036','Female','No',0,'Graduate','No',3510,0,0,'Urban'),
(12,'LP001038','Male','Yes',0,'Graduate','No',4887,0,1,'Rural'),
(13,'LP001041','Male','Yes',0,'Graduate',NULL,2600,3500,1,'Urban'),
(14,'LP001043','Male','Yes',0,'Graduate','No',7660,0,0,'Urban'),
(15,'LP001047','Male','Yes',0,'Graduate','No',2600,1911,0,'Semiurban'),
(16,'LP001050',NULL,'Yes',2,'Graduate','No',3365,1917,0,'Rural'),
(17,'LP001068','Male','Yes',0,'Graduate','No',2799,2253,1,'Semiurban'),
(18,'LP001073','Male','Yes',2,'Graduate','No',4226,1040,1,'Urban'), 
(19,'LP001086','Male','No',0,'Graduate','No',1442,0,1,'Urban'),
(20,'LP001087','Female','No',2,'Graduate',NULL,3750,2083,1,'Semiurban'),
(21,'LP001095','Male','No',0,'Graduate','No',3167,0,1,'Urban'),
(22,'LP001097','Male','No',1,'Graduate','Yes',4692,0,1,'Rural'),
(23,'LP001098','Male','Yes',0,'Graduate','No',3500,1667,1,'Semiurban'),
(24,'LP001109','Male','Yes',0,'Graduate','No',1828,1330,0,'Urban'),
(25,'LP001112','Female','Yes',0,'Graduate','No',3667,1459,1,'Semiurban'),
(27,'LP001119','Male','No',0,'Graduate','No',3600,0,1,'Urban'),
(28,'LP001120','Male','No',0,'Graduate','No',1800,1213,1,'Urban'),
(29,'LP001123','Male','Yes',0,'Graduate','No',2400,0,NULL,'Urban'),
(30,'LP001131','Male','Yes',0,'Graduate','No',3941,2336,1,'Semiurban'),
(31,'LP001136','Male','Yes',0,'Not Graduate','Yes',4695,0,1,'Urban'),
(32,'LP001137','Female','No',0,'Graduate','No',3410,0,1,'Urban'),
(36,'LP001151','Female','No',0,'Graduate','No',4000,2275,1,'Semiurban'),
(37,'LP001155','Female','Yes',0,'Not Graduate','No',1928,1644,1,'Semiurban'), 
(38,'LP001157','Female','No',0,'Graduate','No',3086,0,1,'Semiurban'),
(39,'LP001164','Female','No',0,'Graduate','No',4230,0,1,'Semiurban'),
(40,'LP001179','Male','Yes',2,'Graduate','No',4616,0,1,'Urban'),
(41,'LP001194','Male','Yes',2,'Graduate','No',2708,1167,1,'Semiurban'),
(42,'LP001195','Male','Yes',0,'Graduate','No',2132,1591,1,'Semiurban'),
(43,'LP001197','Male','Yes',0,'Graduate','No',3366,NULL,1,'Rural'),
(44,'LP001199','Male','Yes',2,'Not Graduate','No',3357,2859,1,'Urban'),
(45,'LP001205','Male','Yes',0,'Graduate','No',2500,3796,1,'Urban'),
(46,'LP001206','Male','Yes',3,'Graduate','No',3029,0,1,'Urban'),
(47,'LP001222','Female','No',0,'Graduate','No',4166,0,0,'Semiurban'),
(48,'LP001228','Male','No',0,'Not Graduate','No',3200,2254,0,'Urban'), 
(49,'LP001238','Male','Yes',3,'Not Graduate','Yes',7100,0,1,'Urban'),
(50,'LP001241','Female','No',0,'Graduate','No',NULL,0,0,'Semiurban');

SELECT * FROM Applicants;

CREATE TABLE Loans (
    Loan_ID VARCHAR(10) PRIMARY KEY ,
    LoanAmount DECIMAL(10, 2),
    Loan_Amount_Term INT,
    Loan_Status VARCHAR(10)
);



DESC Loans;

INSERT INTO Loans(Loan_ID,LoanAmount,Loan_Amount_Term,Loan_Status)
VALUES('LP001003',128,360,'N'),
('LP001005',66,360,'Y'),
('LP001006',120,360,'Y'),
('LP001008',141,360,'Y'),
('LP001013',95,360,'Y'),
('LP001024',70,360,'Y'),
('LP001027',109,360,'Y'),
('LP001029',114,360,'N'),
('LP001030',17,120,'Y'),
('LP001032',125,360,'Y'),
('LP001034',100,240,'Y'),
('LP001036',76,360,'N'),
('LP001038',133,360,'N'),
('LP001041',115,NULL,'Y'),	
('LP001043',104,360,'N'),
('LP001047',116,360,'N'),
('LP001050',112,360,'N'),
('LP001068',122,360,'Y'),
('LP001073',NULL,360,'Y'),
('LP001086',35,360,'N'),
('LP001087',120,360,'Y'),
('LP001095',74,360,'N'),
('LP001097',106,360,'N'),
('LP001098',114,360,'Y'),
('LP001109',100,NULL,'N'),
('LP001112',144,360,'Y'),
('LP001116',NULL,360,'Y'),
('LP001119',80,360,'N'),
('LP001120',47,360,'Y'),
('LP001123',75,360,'Y'),
('LP001131',134,360,'Y'),
('LP001136',96,NULL,'Y'),
('LP001137',88,NULL,'Y'),
('LP001138',44,360,'Y'),
('LP001144',144,360,'Y'),
('LP001146',120,360,'N'),
('LP001151',144,360,'Y'),
('LP001155',100,360,'Y'),
('LP001157',120,360,'Y'),
('LP001164',112,360,'N'),
('LP001179',134,360,'N'),
('LP001194',97,360,'Y'),
('LP001195',96,360,'Y'),
('LP001197',135,360,'N'),
('LP001199',144,360,'Y'),
('LP001205',120,360,'Y'),
('LP001206',99,360,'Y'),
('LP001222',116,360,'N'),
('LP001228',126,180,'N'),
('LP001238',125,60,'Y'),
('LP001241',136,360,'N');

#DELETE FROM Loans    #To remove extra rows
#WHERE Loan_ID IN ('LP001112','LP001138','LP001144','LP001146');

#UPDATE Applicants
#SET Applicant_ID = 52
#WHERE Applicant_ID = 100;


SELECT * FROM Loans;
      


#ALTER TABLE Applicants
#DROP FOREIGN KEY fk_Loan_ID;

ALTER TABLE Applicants
ADD CONSTRAINT fk_Loan_ID
FOREIGN KEY (Loan_ID) REFERENCES Loans(Loan_ID); #add Foreign key of Loan_Table in Applicants Table 



SELECT * 
FROM Applicants 
NATURAL JOIN Loans; # used natural join because both primary and foreign column have same column name 
                    # use join according to over requirement 
 