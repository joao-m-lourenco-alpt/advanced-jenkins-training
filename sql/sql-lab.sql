-- 1
CREATE DATABASE testDB;

-- 3 
CREATE TABLE costumer (
    CustomerID   int, 
    CustomerName varchar(255),	
    ContactName varchar(255),		
    Address varchar(255),		
    City varchar(255),		
    PostalCode varchar(255),		
    Country varchar(255)	
);

-- 4

INSERT INTO costumer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (1, 'Alfreds Futterkiste', 'Maria Anders' , 'Obere Str. 57', 'Berlin', '12209', 'Germany');
INSERT INTO costumer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico')
INSERT INTO costumer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico') 
INSERT INTO costumer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK')
INSERT INTO costumer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (5, 'Berglunds snabbkop', 'Christina Berglund', 'Berguvsvagen 8', 'Lulea', 'S-958 22', 'Sweden')

-- 5

SELECT * FROM costumer

-- 6

SELECT DISTINCT Country FROM costumer

-- 7

SELECT * FROM costumer WHERE Country='Mexico'

-- 8 

SELECT * FROM costumer WHERE CustomerID=1