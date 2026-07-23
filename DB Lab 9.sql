/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table SalesPerson(
        ID int Primary Key,
		Name varchar(100),
		Age int,
		Salary int
)
create table Customer(
        ID int Primary Key,
		Name varchar(100),
		City varchar(100),
		Industry_Type varchar(100)
)
create table Orders(
        Number int Primary Key,
		order_date date,
		cust_id int foreign key references Customer(ID),
		salesperson_id int foreign key references SalesPerson(ID),
		Amount int
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select distinct SalesPerson.Name
from SalesPerson
join Orders on SalesPerson.ID = Orders.salesperson_id
join Customer on Orders.cust_id = Customer.ID
where Customer.Name = 'Samsonic';
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select SalesPerson.Name
from SalesPerson
where SalesPerson.ID not in(
    Select Orders.salesperson_id
    from Orders
    join Customer on Orders.cust_id = Customer.ID
    where Customer.Name = 'Samsonic'
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select SalesPerson.Name
from SalesPerson
where SalesPerson.ID not in(
    Select distinct Orders.salesperson_id
    from Orders
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select SalesPerson.Name
from SalesPerson
join(
    Select salesperson_id,count(*) as orders
    from Orders
    group by salesperson_id
    having count(*) >= 2
) orders on SalesPerson.ID = orders.salesperson_id;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table highAchiever(
    Name varchar(100),
	Age int
)
insert into highAchiever(Name,Age)
Select SalesPerson.Name,SalesPerson.Age
from SalesPerson
where SalesPerson.Salary>=100000;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Students(
    StudentID int primary key,
    Name varchar(100) ,
    CampusAddress varchar(100),
    Major varchar(50)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Instructors(
    InstructorID int primary key,
    Name varchar(100),
    Location varchar(20)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Courses(
    CourseID varchar(10) primary key,
    Title varchar(100),
    InstructorID int,
    Foreign Key(InstructorID) References Instructors(InstructorID)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Grades(
    GradeID int primary key,
    StudentID int,
    CourseID varchar(10),
    Grade varchar(2),
    Foreign Key(StudentID) References Students(StudentID),
    Foreign Key(CourseID) References Courses(CourseID)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
insert into Students
values (268300458, 'Emily Williams', '208 Brooks Hall', 'Information Systems');
insert into Instructors
values (1, 'Codd', 'B104'),
	   (2, 'Parsons', 'B317');
insert into Courses 
values  ('IS 350', 'Database Mgt.', 1),
		('IS 465', 'System Analysis', 2);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
insert into Grades 
values  (1, 268300458, 'IS 350', 'A'),
		(2, 268300458, 'IS 465', 'B');
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Products(
    PRODUCT_ID int primary key,
    PRODUCT_NAME varchar(50)
);
insert into Products
values (100, 'Nokia'),
       (200, 'iPhone'),
       (300, 'Samsung');
create table Sales(
    SALE_ID int primary key,
    PRODUCT_ID int,
    YEAR int,
    QUANTITY int,
    PRICE int,
    Foreign Key(PRODUCT_ID) References products(PRODUCT_ID)
);
insert into Sales
values
(1, 100, 2010, 25, 5000),
(2, 100, 2011, 16, 5000),
(3, 100, 2012, 8, 5000),
(4, 200, 2010, 10, 9000),
(5, 200, 2011, 15, 9000),
(6, 200, 2012, 20, 9000),
(7, 300, 2010, 20, 7000),
(8, 300, 2011, 18, 7000),
(9, 300, 2012, 20, 7000);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Products.PRODUCT_NAME,Products.PRODUCT_ID
from products
left join(
    Select PRODUCT_ID,
	sum(QUANTITY) as total_quantity
    from sales
    group by PRODUCT_ID
)Sales
on Products.PRODUCT_ID=Sales.PRODUCT_ID
where Sales.total_quantity=0;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Products.PRODUCT_ID, Products.PRODUCT_NAME
from Sales as s2012
join Sales as s2011 on s2012.PRODUCT_ID = s2011.PRODUCT_ID
join Products on s2012.PRODUCT_ID = Products.PRODUCT_ID
where s2012.YEAR = 2012
  AND s2011.YEAR = 2011
  AND s2012.QUANTITY < s2011.QUANTITY;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Products.PRODUCT_NAME,Products.PRODUCT_ID
from Sales
join Products on Sales.PRODUCT_ID = Products.PRODUCT_ID
join(
    Select Sales.YEAR, Max(Sales.QUANTITY) as MaxQty
    from Sales
    group by Sales.YEAR
) as SubQuery on Sales.YEAR = SubQuery.YEAR and Sales.QUANTITY = SubQuery.MaxQty;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Products.PRODUCT_NAME,Products.PRODUCT_ID,
sum(Sales.QUANTITY) as total_sales
from Products
join Sales on Products.PRODUCT_ID = Sales.PRODUCT_ID
group by Products.PRODUCT_ID, Products.PRODUCT_NAME;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Products.PRODUCT_ID,Products.PRODUCT_NAME
from Products
join SALES s2010 on Products.PRODUCT_ID=s2010.PRODUCT_ID AND s2010.YEAR = 2010
join SALES s2011 on Products.PRODUCT_ID=s2011.PRODUCT_ID AND s2011.YEAR = 2011
join SALES s2012 on Products.PRODUCT_ID=s2012.PRODUCT_ID AND s2012.YEAR = 2012
where s2010.QUANTITY<s2011.QUANTITY AND s2011.QUANTITY<s2012.QUANTITY;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Sales.PRODUCT_ID, Products.PRODUCT_NAME, Sales.YEAR, Sales.QUANTITY
from Sales
join Products on Sales.PRODUCT_ID = Products.PRODUCT_ID
join(
    select Sales.PRODUCT_ID,avg(Sales.QUANTITY) as AVG_QTY
    from Sales
    group by Sales.PRODUCT_ID
) as AvgTable on Sales.PRODUCT_ID = AvgTable.PRODUCT_ID
where Sales.QUANTITY > AvgTable.AVG_QTY;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select 
    Sales.YEAR,
    Sales.QUANTITY as IPHONE_QUANT,
    Sales2.QUANTITY as SAM_QUANT,
    Sales.PRICE as IPHONE_PRICE,
    Sales2.PRICE as SAM_PRICE
from Sales
join Products on Sales.PRODUCT_ID = Products.PRODUCT_ID AND Products.PRODUCT_NAME = 'iPhone'
join Sales as Sales2 on Sales.YEAR = Sales2.YEAR
join Products as Products2 on Sales2.PRODUCT_ID = Products2.PRODUCT_ID AND 
Products2.PRODUCT_NAME = 'Samsung';
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select YEAR,
count(distinct PRODUCT_ID) as PRODUCTS_SOLD
from SALES
group by YEAR;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select PRODUCT_ID,YEAR,QUANTITY, PRICE,
count(*)
from SALES
group by PRODUCT_ID,YEAR,QUANTITY,PRICE
having count(*)>1;
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table PHYSICIAN(
    PhysicianID int primary key,         
    Specialty varchar(50)       
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table PATIENT(
    PatientID int primary key,
    PatientName varchar(50),
    PhysicianID int,                                   
    Foreign Key(PhysicianID) References PHYSICIAN(PhysicianID)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table TREATMENT_DETAIL(
    TreatmentID int primary key,
    PatientID int,
    PhysicianID int,
    TreatmentDate date,
    TreatmentTime time,
    Results varchar(20),
    Foreign Key(PatientID) references PATIENT(PatientID),
    Foreign Key(PhysicianID) references PHYSICIAN(PhysicianID)
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table CUSTOMERS(
    CustomerID int primary key,
    Name varchar(100),
    AddressStreet varchar(100),
    AddressCity varchar(100),
    AddressState varchar(50),
    AddressZipCode varchar(20),
    Telephone varchar(20) unique
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table LOCATION(
    LocationID int primary key,
    CustomerID int,
    AddressStreet varchar(100),
    AddressCity varchar(100),
    AddressState varchar(50),
    AddressZipCode varchar(20),
    LocationType varchar(20),
    Foreign Key(CustomerID) References CUSTOMERS(CustomerID),
    check(LocationType in ('Business', 'Residential'))
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table RATE(
    RateID int primary key,
    RateClass varchar(100) unique,
    RatePerKWH decimal(10, 4) 
);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table LOCATION_RATE_SCHEDULE(
    ScheduleID int primary key,
    LocationID int,
    RateID int,
    TimeOfDayStart time,
    TimeOfDayEnd time,
    Foreign Key(LocationID) References Location(LocationID),
    Foreign Key(RateID) References RATE(RateID)
);













