-- Creating the Customers table
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Email VARCHAR2(100),
    Phone VARCHAR2(15)
);

-- Creating the Orders table with a foreign key referencing Customers
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    OrderDate DATE,
    CustomerID NUMBER,
    TotalAmount NUMBER(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- creating a categories table
CREATE TABLE Categories (
    CategoryID NUMBER PRIMARY KEY,
    CategoryName VARCHAR2(100) NOT NULL
);

-- creating products table referencing categories
CREATE TABLE Products (
    ProductID NUMBER PRIMARY KEY,
    ProductName VARCHAR2(100) NOT NULL,
    CategoryID NUMBER,
    Price NUMBER(10, 2),
    StockQuantity NUMBER,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
-- creating table orderdetails referencing orders table and products table
CREATE TABLE OrderDetails (
    OrderDetailID NUMBER PRIMARY KEY,
    OrderID NUMBER,
    ProductID NUMBER,
    Quantity NUMBER,
    PricePerUnit NUMBER(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

--creating table suppliers
CREATE TABLE Suppliers (
    SupplierID NUMBER PRIMARY KEY,
    SupplierName VARCHAR2(100) NOT NULL,
    ContactEmail VARCHAR2(100),
    Phone VARCHAR2(15)
);
--creating table product suppliers referencig products and suppliers
CREATE TABLE ProductSuppliers (
    ProductID NUMBER,
    SupplierID NUMBER,
    PRIMARY KEY (ProductID, SupplierID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);


-- Inserting data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES 
(1, 'kevin', 'nshuti', 'nshutikevin@gmail.com', '0788956407');

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES 
(2, 'fabrice', 'mucyo', 'mutabazi@gmail.com', '0783123333');

insert into customers values ('3','ange','Mutesi','noella@gmaiil.com','078654321');

-- inserting into Orders table
INSERT INTO Orders (OrderID, OrderDate, CustomerID, TotalAmount) VALUES 
(101, TO_DATE('2024-09-20', 'YYYY-MM-DD'), 1, 250.75);

INSERT INTO Orders (OrderID, OrderDate, CustomerID, TotalAmount) VALUES 
(102, TO_DATE('2024-09-21', 'YYYY-MM-DD'), 2, 180.50);

-- Inserting data into Categories table
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Electronics');
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(2, 'Books');
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(3, 'Clothing');

--inserting data into Products table
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, StockQuantity) VALUES
(1, 'Laptop', 1, 1200.00, 50);
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, StockQuantity) VALUES
(2, 'Smartphone', 1, 800.00, 150);
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, StockQuantity) VALUES
(3, 'Novel', 2, 15.50, 200);

-- Inserting data into Suppliers table
INSERT INTO Suppliers (SupplierID, SupplierName, ContactEmail, Phone) VALUES
(1, 'ShanTech', 'shan@techsupply.com', '0788345733');
INSERT INTO Suppliers (SupplierID, SupplierName, ContactEmail, Phone) VALUES
(2, 'BookWorld', 'book@world.com', '0786543458');

-- Inserting data into ProductSuppliers table
INSERT INTO ProductSuppliers (ProductID, SupplierID) VALUES
(1, 1);
INSERT INTO ProductSuppliers (ProductID, SupplierID) VALUES
(2, 1);
INSERT INTO ProductSuppliers (ProductID, SupplierID) VALUES
(3, 2);

select* from orders;

-- Retrieving customer orders
SELECT c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Updating a customer's email
UPDATE Customers
SET Email = 'nshkev808@gmail.com'
WHERE CustomerID = 1;

-- Deleting an order
DELETE FROM Orders
WHERE OrderID = 102;
-- checking if row was inserted and deleted
select * from suppliers;

select * from productsuppliers;








