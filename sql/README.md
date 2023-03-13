# SQL LAB

Welcome to the SQL laboratory. We prepared some exercises to improve your SQL knowledge.

## DDL Operations
DDL stands for Data Definition Language and is used to create and modify the structure of objects in a database.

Before start creating objects in database server we need a SQL client to connect to SQL server.

You can use one of the following options:

- [Azure Data Studio](https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16&tabs=redhat-install%2Credhat-uninstall)
- [DBeaver](https://dbeaver.io/download/) 

Now that we are able to connect to a SQL server let's create stuff.

1. Create a database with the name `TestDB`.

2. Connect to the new database and confirm that there is no tables in `TestDB`

3. Create a new table with the name `Costumer`. It should have the following columns:
    
    - CustomerID   int 
    - CustomerName varchar(255)	
    - ContactName varchar(255)		
    - Address varchar(255)		
    - City varchar(255)		
    - PostalCode varchar(255)		
    - Country varchar(255)	

## DML Operations

DML stands for Data Manipulation Language and is used to managing and manipulating data in the database.

4. Insert the following data in the table `Costumer`.

| CustomerID    | CustomerName                      | ContactName       | Address	                    | City          | PostalCode    | Country       |
| -----------   | -----------                       | -----------       | -----------                   | ---------     |-----------    |-----------    |
| 1             | Alfreds Futterkiste               | Maria Anders      | Obere Str. 57                 | Berlin        | 12209         | Germany       |
| 2	            | Ana Trujillo Emparedados y helados| Ana Trujillo	    | Avda. de la Constitución 2222 | México D.F.	| 05021	        | Mexico        |
| 3	            | Antonio Moreno Taquería           | Antonio Moreno    | Mataderos 2312	            | México D.F.	| 05023	        | Mexico        |
| 4             | Around the Horn                   | Thomas Hardy      | 120 Hanover Sq.	            | London	    | WA1 1DP	    | UK            |
| 5	            | Berglunds snabbkop                | Christina Berglund| Berguvsvagen 8	            | Lulea	        | S-958 22      | Sweden        |

5. Use the `SELECT` statement to get all the records of the `Costumer` table.

6. How many different countries are from the customers?

7. Retrieve all the information from all the customers from Mexico.

8. Retrieve all the information from the client with `CustomerID` equals to 1.

9. Delete all customers from table which city starts by the letter 'L'.

10. How many customers remain in the table?

11. Delete all records from the table.

12. Insert the data provided in the file `customers.csv` in the table `Costumer`.

13. Retrieve all customers where country is "Germany" and the city is "Berlin" or "Munchen". 

14. Retrieve the contact name and the country of the customers that belong to countries that do not speak portuguese.

15. Retrieve all the customers order by city.

16. Retrieve all the customers sorted descending by name.

17. Update the city and country of the customer with Id=3 to Porto, Portugal respectively.

18. Update the contact name to "Juan Gonzalez" for all records where country is "Mexico".

19. Delete the customer with the name "Koniglich Essen" from the table.

20. Add the column 'Revenue' with type int to the table.

21. Proceed with the following updates:

    - CustomerID=1; Revenue=1230
    - CustomerID=3; Revenue=530
    - CustomerID=5; Revenue=29
    - CustomerID=7; Revenue=900
    - CustomerID=9; Revenue=666

22. Retrieve the maximum revenue value.

23. Retrieve the minimum revenue value.

24. Retrieve the average revenue value.

25. Retrieve the total value of revenue accomplished by the customers.

26. Retrive all the customers whith revenue value is NULL.

27. Update the revenue value to zero (0) to all customers with revenue value NULL

28. Retrieve the number of customers with revenue value highet that zero (0).

29. Retrieve all the customers woth a revenue value between 500 and 1000.

30. Retrieve the number of customers by country, sorted high to low.  
