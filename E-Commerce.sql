CREATE DATABASE ECOMMERCE;

-- USERS TABLE
CREATE TABLE Users(
    User_Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Role VARCHAR(20) DEFAULT 'customer', -- 'admin' or 'customer'
    Created_At DATETIME DEFAULT GETDATE()
);

-- CATEGORIES TABLE
CREATE TABLE Categories(
    Categories_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

INSERT INTO Categories(Categories_Id,Name) 
VALUES
(1,'Shirts'),
(2,'Shoes'),
(3,'Electronics'),
(4,'Clothing'),
(5,'Perfume'),
(6,'Accessories'),
(7,'bags'),
(8,'watch');




-- PRODUCTS TABLE
CREATE TABLE Products(
    Products_Id INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(200) NOT NULL,
    Description TEXT,
    Price FLOAT NOT NULL,
    Stock INT DEFAULT 0,
    Category_Id INT,
    Image_Url VARCHAR(500),
    Created_At DATETIME DEFAULT GETDATE(),
    FOREIGN KEY(category_Id) REFERENCES Categories(Categories_Id) ON DELETE SET NULL
);

-- ORDERS TABLE
CREATE TABLE Orders(
    Orders_Id INT PRIMARY KEY IDENTITY(1,1),
    User_Id INT NOT NULL,
    Total_Price FLOAT NOT NULL,
    Status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'paid', 'shipped'
    Created_At DATETIME DEFAULT GETDATE(),
    Address NVARCHAR(255),
    city NVARCHAR(100),
    FOREIGN KEY(User_Id) REFERENCES users(User_Id) ON DELETE CASCADE
);

-- ORDER ITEMS TABLE
CREATE TABLE Order_Items(
    Order_Items_Id INT PRIMARY KEY IDENTITY(1,1),
    Orders_Id INT NOT NULL,
    Products_Id INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity>0),
    price FLOAT NOT NULL,
    FOREIGN KEY(Orders_Id) REFERENCES orders(Orders_Id) ON DELETE CASCADE,
    FOREIGN KEY(Products_Id) REFERENCES products(Products_Id) ON DELETE CASCADE
);

-- PAYMENTS TABLE
CREATE TABLE Payments(
    Payment_Id INT PRIMARY KEY IDENTITY(1,1),
    Orders_Id INT NOT NULL,
    Payment_Method VARCHAR(50),
    Amount FLOAT NOT NULL,
    Status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'completed', 'failed'
    Paid_At DATETIME DEFAULT GETDATE(),
    FOREIGN KEY(Orders_Id) REFERENCES orders(Orders_Id) ON DELETE CASCADE
);



-- Seller Table
CREATE TABLE Seller(
    Seller_Id INT PRIMARY KEY IDENTITY(1,1),
    Products_Id INT,
    User_Id INT,
    FOREIGN KEY(user_id) REFERENCES Users(User_Id) ON DELETE CASCADE,
    FOREIGN KEY(Products_id) REFERENCES Products(Products_Id) ON DELETE CASCADE
);



-- Contact table
CREATE TABLE Contact(
   ID INT PRIMARY KEY IDENTITY(1,1),
   Name VARCHAR(50),
   Email VARCHAR(100),
   Message VARCHAR(200)
);





INSERT INTO Users(Name,Email,Password,Role) Values 
('Muhammad Rehan Riaz','muhammadrehanriaz786@gmail.com',786,'admin');