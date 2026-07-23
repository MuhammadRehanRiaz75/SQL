/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select * from Students
INSERT INTO Students(Name,Reg_No,Courses,Course_Code,Offered_By)
VALUES
('Ali',01,'DIP',1001,'Mr.A'),
('Basit', 2, 'DBMS', 1002, 'Mr. X'),
('Akram', 3, 'OS', 1003, 'Mr. Y'),
('Asad', 4, 'DBMS', 1002, 'Mr. X'),
('Zeeshan', 5, 'DIP', 1001, 'Mr. A'),
('Muneer', 6, 'OS', 1003, 'Mr. Y'),
('Shafqat', 7, 'NM', 1004, 'Mr. H'),
('Ahsan', 8, 'OS', 1003, 'Mr. Y'),
('Ikram',09,'DIP',NULL,NULL),
('Hassan',10,NULL,NULL,NULL);
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
UPDATE Students
SET Courses='DIP',Course_Code=1001,Offered_By='Mr.A'
where Reg_No=09;
UPDATE Students
SET Courses='DSP',Course_Code=1005,Offered_By='Mr.Z'
where Reg_No=10;
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
DELETE FROM Students
where Name='Ahsan';
DELETE FROM Students
where Name='Akram';
DELETE FROM Students
where Course_Code=1001;
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select distinct Courses,Course_Code,Offered_By from Students
/* Muhammad Rehan Riaz 23-CS-76 Section B*/
Select * from Students order by Name Desc

