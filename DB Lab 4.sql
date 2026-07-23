create table Customers(
    CustomerID int,
    CustomerName varchar(100),
    ContactName varchar(100),
    Address varchar(100),
    City varchar(100),
    PostalCode varchar(100),
    Country varchar(100)
);
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbKöp', 'Christina Berglund', 'Berguvevägen 8', 'Lulea', 'S-958 22', 'Sweden');
Select * from Customers
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Customers where City like 's%'
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Customers where City like '%s'
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Customers where City like '%land%'
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Customers where City not like '%land%'
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select top 2 * from Customers where Country in ('Germany','Sweden')
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Customers where City in ('Paris','London')
/* Muhammad Rehan Riaz 23-CS-76 Section B */
create table Student(
    id int,
    firstName varchar(100),
    lastName varchar(100)
);
insert into Student(id, firstName, lastName)
values
(100001, 'Jwalant', 'Patel'),
(100002, 'Hiren', 'Amin'),
(100003, 'Yogesh', 'Patil');
Select * from Student
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Student where lastName like 'Pat%'
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Student where firstName like '[JH]%'
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Student where firstName like '[^JH]%'
create table Products (
    ProductID int,
    ProductName varchar(100),
    SupplierID int,
    CategoryID int,
    Unit varchar(100),
    Price int,
);
insert into Products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
values
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
(4, 'Chef Anton’s Cajun Seasoning', 1, 2, '48 - 6 oz jars', 22),
(5, 'Chef Anton’s Gumbo Mix', 1, 2, '36 boxes', 21.35);
Select * from Products
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Products where Price Between 10 and 20
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Products where Price Between 20 and 30
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Products where Price Between 10 and 22
and CategoryID not in (1,2,3)
/* Muhammad Rehan Riaz 23-CS-76 Section B */
Select * from Products where ProductName Not Like '[C-M]%'