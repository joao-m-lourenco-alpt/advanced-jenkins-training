-- 1
CREATE DATABASE TestDB;

-- 3 
CREATE TABLE Customer (
    CustomerID   int, 
    CustomerName varchar(255),	
    ContactName varchar(255),		
    Address varchar(255),		
    City varchar(255),		
    PostalCode varchar(255),		
    Country varchar(255)	
);

-- 4

INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (1, 'Alfreds Futterkiste', 'Maria Anders' , 'Obere Str. 57', 'Berlin', '12209', 'Germany');
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico')
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico') 
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK')
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES (5, 'Berglunds snabbkop', 'Christina Berglund', 'Berguvsvagen 8', 'Lulea', 'S-958 22', 'Sweden')

-- 5

SELECT * FROM Customer

-- 6

SELECT DISTINCT Country FROM Customer

-- 7

SELECT * FROM Customer WHERE Country='Mexico'

-- 8 

SELECT * FROM Customer WHERE CustomerID=1


-- 9

DELETE FROM Customer WHERE City LIKE '%L' 

-- 10
-- ANSWER: 2
SELECT * FROM Customer


-- 11
DELETE FROM Customer
SELECT * FROM Customer


-- 12

-- MSSQL

BULK INSERT Customer
FROM '/customers.csv'
WITH
(
    FIRSTROW = 1,
    FIELDTERMINATOR = '\t',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
);

-- Postgres

-- Copy file to Postgres sever
-- scp -r . linuxlearner@20.111.44.220:/home/linuxlearne
COPY Customer(CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country)
FROM '/home/linuxlearner/customers.csv'
DELIMITER E'\t'
CSV;


-- 13

SELECT * FROM Customer WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Munchen')

-- 14

SELECT ContactName, Country FROM Customer WHERE NOT (Country = 'Portugal' OR Country = 'Brazil') 
SELECT ContactName, Country FROM Customer WHERE Country NOT IN ('Portugal', 'Brazil')

-- 15

SELECT * FROM Customer ORDER BY City

-- 16

SELECT * FROM Customer ORDER BY CustomerName DESC

-- 17

UPDATE Customer
SET City = 'Porto', Country= 'Portugal'
WHERE CustomerID = 3;

-- 18

UPDATE Customer
SET ContactName = 'Juan Gonzalez'
WHERE Country = 'Mexico';

-- 19

DELETE FROM Customer WHERE CustomerName='Koniglich Essen'

-- 20

ALTER TABLE Customer
ADD Revenue int 

-- 21

UPDATE Customer SET Revenue = 1230 WHERE CustomerID = 1
UPDATE Customer SET Revenue = 530 WHERE CustomerID = 3
UPDATE Customer SET Revenue = 29 WHERE CustomerID = 5
UPDATE Customer SET Revenue = 900 WHERE CustomerID = 7
UPDATE Customer SET Revenue = 666 WHERE CustomerID = 9

-- 22

SELECT MAX(Revenue) FROM Customer

-- 23

SELECT MIN(Revenue) FROM Customer

--24

SELECT AVG(Revenue) FROM Customer

--25

SELECT SUM(Revenue) FROM Customer

-- 26

SELECT * FROM Customer WHERE Revenue IS NULL

-- 27

UPDATE Customer SET Revenue = 0 WHERE Revenue IS NULL

-- 28

SELECT COUNT(Revenue) FROM Customer WHERE Revenue > 0

-- 29

SELECT * FROM Customer WHERE Revenue BETWEEN 500 AND 1000

-- 30

SELECT COUNT(CustomerID), Country
FROM Customer
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
