/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select * From Student
Insert into Student(Name,Reg_No,Courses,Course_Code,Offered_By)
Values
('Ali',01,'DIP',1001,'Mr.A'),
('Basit',02,'DBMS',1002,'Mr.X'),
('Akram',03,'OS', 1003,'Mr.Y'),
('Asad',04,'DBMS', 1002,'Mr.X'),
('Zeeshan',05,'DIP', 1001,'Mr.A'),
('Muneer',06,'OS',NULL,'Mr.Y'),
('Shafqat',07,'NM',1004,'Mr.H'),
('Ahsan',08,'OS',1003,'Mr.Y'),
('Ikram',09,'DIP', NULL,'Mr.A'),
('Hassan',10,'DSP',NULL,NULL);
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select count(Courses) as No_of_Courses from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select count(Course_Code) as Course_Codes from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select count(Offered_By) as No_of_Instructors from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select count(Distinct Reg_No) as Total from Student
where Course_Code=1002
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select count(Distinct Reg_No) as DIP_Students from Student
where Courses='DIP'
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select UPPER(Name) as Names from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select Lower(Courses) as Courses from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select Lower(Offered_By) as Offered_By from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select Courses,count(*) as Num_of_Students from Student
Group By Courses
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select max(Reg_No) as Max_Reg_No from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select min(Course_Code) as Min_Course_Code from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select len(Name) as Name_Length from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select max(len(Name)) as Name_Length from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select avg(Reg_No) as Avg_Reg_No from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
create Table Orders(
      O_Id int,
	  OrderPrice int,
	  Customer varchar(50)
);
INSERT into Orders(O_Id,OrderPrice,Customer)
Values
(1,1000,'Hansen'),
(2,1600,'Nilsen'),
(3,700,'Hansen'),
(4,300,'Hansen'),
(5,2000,'Jensen'),
(6,100,'Nilsen');
Select * from Orders
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select Customer,Sum(OrderPrice) as Total_Amount from Orders
where Customer='Hansen' or Customer='Nilsen'
group by Customer
having Sum(OrderPrice)<2100
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select Customer,Sum(OrderPrice) as Total_Amount from Orders
group by Customer
having Sum(OrderPrice)>1800

