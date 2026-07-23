/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Student(
            SID int not null Primary Key,
			Name varchar(100) not null unique,
			ADDRESS varchar(250) Default 'Taxila',
			GENDER varchar(1),
			AGE int,
			check(SID>0),
)
Select * from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Insert into Student(SID,Name,ADDRESS,GENDER,AGE)
values (1,'Rehan Riaz','Chakwal','M',20),
       (2,'Farhan Riaz','Rawalpindi','M',21),
	   (3,'Hadia Riaz','Lahore','F',16);
Insert into Student(SID,Name,GENDER,AGE)
values (4,'Jawad Arif','M',4)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Supplier(
       SupplierID int Primary Key,
	   SupplierName varchar(250)
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Product(
        ProductID int Primary Key,
		ProductName varchar(250),
		SupplierID int,
		CategoryID int,
		Unit varchar(250),
		Price decimal(10,2),
		Foreign Key(SupplierID) References Supplier(SupplierID),
			 )
/* Muhammad Rehan Riaz 23-CS-76 Section B */
INSERT INTO Supplier(SupplierID,SupplierName) 
VALUES 
      (1, 'Supplier A');
/* Muhammad Rehan Riaz 23-CS-76 Section B */
INSERT INTO Product(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) 
VALUES
(1,'Chais',1,1,'10 boxes x 20 bags',18),
(2,'Chang',1, 1,'24 - 12 oz bottles',19),
(3,'Aniseed Syrup',1, 2,'12 - 550 ml bottles',10),
(4,'Chef Anton’s Cajun Seasoning',1,2,'48 - 6 oz jars',22),
(5,'Chef Anton’s Gumbo Mix',1,2,'36 boxes',21.35);
Select * from Product
Select * from Supplier
/* Muhammad Rehan Riaz 23-CS-76 Section B */
delete from Product
where ProductName LIKE 'C%s' OR ProductName LIKE 'C%g';
delete Product
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select COUNT(*) as Number_of_Products from Product
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Customer(
    ID int Primary Key,
    NAME varchar(50),
    AGE int,
    ADDRESS varchar(100),
    SALARY decimal(10, 2)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
insert into Customer(ID, NAME, AGE, ADDRESS, SALARY) 
VALUES
(1,'Toseef',32,'Islamabad',2000.00),
(2,'Tuafial',25,'Wuzaffarabad',1500.00),
(3,'Adnan',23,'Kotil',2000.00),
(4,'Talha',25,'Chikhar',6500.00),
(5,'Shahid',27,'Neelum',8500.00),
(6,'Vasir',22,'Wuzaffarabad',4500.00);
Select * from Customer
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Customer
alter column SALARY decimal(10, 2) not null;