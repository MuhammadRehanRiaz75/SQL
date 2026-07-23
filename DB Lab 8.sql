/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table branch(
   branchNo varchar(50),
   branchAddress varchar(200),
   telNos varchar(50)
   )
/* Muhammad Rehan Riaz 23-CS-76 Section B */
insert into branch(branchNo,branchAddress,telNos)
values 
('B001','8 Jefferson Way,Portland,OR 97201','5035553618'),
('B001','8 Jefferson Way,Portland,OR 97201','5035552727'),
('B001','8 Jefferson Way,Portland,OR 97201','5035556534'),
('B002','City Center Plaza,Seattle,WA 98122','2065556756'),
('B002','City Center Plaza,Seattle,WA 98122','2065558836'),
('B003','14-8th Avenue, New York,NY 10012','2123713000'),
('B004','16-14th Avenue,Seattle,WA 98128','2065553131'),
('B004','16-14th Avenue,Seattle,WA 98128','2065554112');
Select * from branch
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table staff(
    staffNo varchar(50) primary key,
    name varchar(50),
    position varchar(20)
);
create table Branchs(
    branchNo varchar(50) primary key,
    branchAddress varchar(100)
);
create table staff_detail(
    staffNo varchar(50),
    branchNo varchar(50),
    hoursPerWeek int,
	primary key(staffNo,branchNo),
    Foreign key(staffNo) references Staff(staffNo),
    Foreign key(branchNo) references Branchs(branchNo)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
insert into Staff values
('S4555','Ellen Layman','Assistant'),
('S4612','Dave Sinclair','Assistant');
insert into Branchs values
('B002','City Center Plaza,Seattle'),
('B004','16 - 14th Avenue,Seattle');
insert into staff_detail values
('S4555','B002',16),
('S4555','B004',9),
('S4612','B002',14),
('S4612','B004',10);
Select * from Staff
Select * from Branchs
Select * from staff_detail
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Branches(
    branchNo varchar(50) primary key,
    branchAddress varchar(100),
    telNo varchar(50)
);
create table sstaff(
    staffNo varchar(50) primary key,
    name varchar(50),
    position varchar(50),
    salary int,
    branchNo varchar(50),
    Foreign Key(branchNo) references Branches(branchNo)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
insert into Branches values
('B001','8 Jefferson Way, Portland, OR 97201','503-555-3618'),
('B002','City Center Plaza, Seattle, WA 98122','206-555-6756'),
('B003','14 - 8th Avenue, New York, NY 10012','212-371-3000'),
('B004','16 - 14th Avenue, Seattle, WA 98128','206-555-3131');
insert into sstaff values
('S1500','Tom Daniels','Manager',46000,'B001'),
('S0003','Sally Adams','Assistant',30000,'B001'),
('S0010','Mary Martinez','Manager',50000,'B002'),
('S3250','Robert Chin','Supervisor',32000,'B002'),
('S2250','Sally Stern','Manager',48000,'B004'),
('S0415','Art Peters','Manager',41000,'B003');
Select * from Branches
Select * from sstaff