/* Muhammad Rehan Riaz 23-CS-76 Section B*/
create table Students(
     Roll_No int Primary Key,
	 Name varchar(50),
	 Course varchar(50),
	 Course_Code int,
	 Grade varchar(50)
)
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Insert into Students(Roll_No,Name,Course,Course_Code,Grade)
values
      (10,'Rehan','DB',1001,'A'),
	  (12,'Farhan','AI',1002,'B'),
	  (31,'Jawad','DS',1003,'A'),
	  (44,'Zain','OS',1004,'C'),
	  (56,'Hassan','IT',1005,'F');
Select * from Students