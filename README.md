E-Commerce Database Management System
Problem Statement
This project manages an e-commerce system that handles data for customers, orders, products, suppliers, and order details. The system aims to manage customer orders, product inventory, and supplier relationships. The database is designed to track:

Customers and their personal details.
Orders placed by customers, including the order date and total amount.
Products with details like price, stock quantity, and supplier relationships.
OrderDetails which specify the products within each order.
Suppliers providing the products.
The database enables easy querying for order management, inventory control, and supplier interactions, helping the system provide smooth operations for both administrators and users.

SQL Commands Executed
1. Table Creation:

Customers Table: Stores customer details like name, email, and phone number.
Orders Table: Stores order information with a reference to the Customers table via a foreign key.
Products Table: Stores product details such as name, price, and category.
OrderDetails Table: Stores the product details for each order, linking to both Orders and Products tables.
Suppliers Table: Stores information about suppliers providing products to the system.
ProductSuppliers Table: Manages the many-to-many relationship between products and suppliers.


Example SQL for Creating the Customers Table:
<<<<<<< HEAD
```sql
=======
```sql```
>>>>>>> 103d166a35502ce33b83e93a5dbd3e800c8a71f5
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Email VARCHAR2(100),
    Phone VARCHAR2(15)
);
<<<<<<< HEAD
```
=======
   ```sql```
>>>>>>> 103d166a35502ce33b83e93a5dbd3e800c8a71f5
2. Inserting Data:
Data was inserted into all the tables using the INSERT INTO command. Below is an example of data insertion into the Customers table:

-- Inserting data into Customers table
```sql
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES 
(1, 'kevin', 'nshuti', 'nshutikevin@gmail.com', '0788956407');

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES 
(2, 'fabrice', 'mucyo', 'mutabazi@gmail.com', '0783123333');

```

3. Querying the Database:
SQL queries were used to retrieve information, such as customer orders and details about products. A basic JOIN query to retrieve customer orders:

-- Retrieving customer orders

```sql
SELECT c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;
```

4. Updating Data:
Data in the tables was modified using the UPDATE command, such as updating a customer’s email address:

-- Updating a customer's email
```sql
UPDATE Customers
SET Email = 'nshkev808@gmail.com'
WHERE CustomerID = 1;
```

5. Deleting Data:
Data was deleted using the DELETE command. For example, deleting an order:

-- Deleting an order
```sql
DELETE FROM Orders
WHERE OrderID = 102;

```
