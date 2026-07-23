create table Customer(
    ID int Primary Key,
    NAME varchar(50),
    AGE int,
    ADDRESS varchar(100),
    SALARY decimal(10, 2)
);
create table orders(
        ID int,
        OID int primary key,
		Date date,
		Amount int,
		Foreign Key(ID) references Customer(ID)
)
insert into Customer(ID, NAME, AGE, ADDRESS, SALARY) 
VALUES
(1,'Toseef',32,'Islamabad',2000.00),
(2,'Tuafial',25,'Wuzaffarabad',1500.00),
(3,'Adnan',23,'Kotil',2000.00),
(4,'Talha',25,'Chikhar',6500.00),
(5,'Shahid',27,'Neelum',8500.00),
(6,'Vasir',22,'Wuzaffarabad',4500.00);
insert into orders(OID,Date,ID,Amount)
values (102,'2009-10-8',3,3000),
       (100,'2009-10-8',3,1500),
	   (101,'2009-11-20',2,1560),
	   (103,'2008-5-20',4,2060);
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Customer.ID,Customer.NAME,Customer.ADDRESS,sum (orders.Amount) as Total_Amount
from Customer
join orders
on Customer.ID=orders.ID
group by Customer.ID,Customer.NAME,Customer.ADDRESS
order by Customer.ID desc
create table Building(
      Building_Name varchar(50) primary key,
	  Capacity int,
)
create table Employees(
        Building varchar(50) foreign key references Building(Building_Name),
        Role varchar(50),
		Name varchar(50),
		Years_Employed int,
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Building.Building_Name,Building.Capacity,Employees.Name from Building left join 
Employees on Building.Building_Name=Employees.Building
create table Movies(
       Id int primary key,
	   Title varchar(50),
	   Director varchar(50),
	   Year int,
	   Length_Minutes int,
)
create table Boxoffice(
       Movie_Id int foreign key references Movies(Id),
	   Rating int,
	   Domestic_Sales int,
	   International_Sales int
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Movies.Id,Movies.Title,Boxoffice.Domestic_Sales,Boxoffice.International_Sales from Movies 
join Boxoffice
on Movies.Id=Boxoffice.Movie_Id
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Movies.Id,Movies.Title,Boxoffice.Movie_Id,Boxoffice.Rating from Movies join 
Boxoffice on Movies.Id=Boxoffice.Movie_Id
order by Boxoffice.Rating desc
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Movies.Id,Movies.Title,Boxoffice.Domestic_Sales,Boxoffice.International_Sales from Movies 
join Boxoffice
on Movies.Id=Boxoffice.Movie_Id
where Boxoffice.International_Sales>Boxoffice.Domestic_Sales
create table Supplier(
      supplier_id int primary key,
	  supplier_name varchar(200)
)
create table Orderr(
      order_id int primary key,
	  order_date date,
	  supplier_id int foreign key references Supplier(supplier_id)
)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Supplier.supplier_id,Supplier.supplier_name,Orderr.order_date from Supplier 
left join Orderr on
Supplier.supplier_id=Orderr.supplier_id
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Supplier.supplier_name,Orderr.order_date,Orderr.order_id from Supplier 
right join Orderr on
Supplier.supplier_id=Orderr.supplier_id
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select Supplier.supplier_id,Supplier.supplier_name,Orderr.order_date from Supplier 
full join Orderr on
Supplier.supplier_id=Orderr.supplier_id