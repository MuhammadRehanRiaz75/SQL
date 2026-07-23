/* Task 1 */
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Customer(
      First_Name char(50),
	  Last_Name char(50),
	  Address char(50),
	  City char(50),
	  Country char(25),
	  Birth_Date datetime
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Customer
Add Gender char(1)
Select * from Customer
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Customer
alter column Birth_Date int
sp_rename 'Customer.Birth_Date','Age','Column'
Select * from Customer
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Create index PIndex on Customer(First_Name,Age)
/* Task 3 */
create table Student(
     Student_Id int,
	 Student_Name varchar(250)
)
insert into Student(Student_Id,Student_Name)
values (38214,'Ali'),
       (54907,'Ahsan'),
	   (66324,'Bilal'),
	   (70542,'Naeem');
Select * from Student
create table Faculty(
     Faculty_Id int,
	 Faculty_Name varchar(250),
)
insert into Faculty(Faculty_Id,Faculty_Name,Department)
values (38214,'Ali','Comp.Science'),
       (54907,'Ahsan','Comp.Eng'),
	   (66324,'Bilal','Comp.Eng'),
	   (70542,'Naeem','Comp.Science');
Select * from Faculty
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Student
add Class varchar(250)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Student 
alter column Student_Name char(50)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
drop table Student
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Faculty
add Faculty_Num int identity(1,5)
Select * from Faculty
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Faculty
add Department varchar(250) check(Department='Comp.Science' or Department='Comp.Eng')
delete Faculty
/* Task 2 */
create table Product(
     ProductID int Primary Key,
	 ProductName varchar(250),
	 SupplierID int,
	 CategoryID int,
	 Unit varchar(250),
	 Price decimal(10,2)
)
INSERT INTO Product(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) 
VALUES
(1,'Chais',1,1,'10 boxes x 20 bags',18),
(2,'Chang',1, 1,'24 - 12 oz bottles',19),
(3,'Aniseed Syrup',1, 2,'12 - 550 ml bottles',10),
(4,'Chef Anton’s Cajun Seasoning',1,2,'48 - 6 oz jars',22),
(5,'Chef Anton’s Gumbo Mix',1,2,'36 boxes',21.35);
Select * from Product
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Products(
     ProductID int Primary Key,
	 ProductName varchar(250),
	 CategoryID int,
	 Unit varchar(250),
	 Price decimal(10,2)
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Supplier(
     ProductID int,
     SupplierID int,
	 Foreign Key(ProductID) references Products(ProductID)
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
alter table Supplier
add Supplier_Name varchar(100)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select ProductName from Product where Price<20
/* Muhammad Rehan Riaz 23-CS-76 Section B */
delete from Product
where Unit not like '%bottles'
Select * from Product





