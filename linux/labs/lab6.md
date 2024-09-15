# Linux basics LAB5

## Exercises

Do the next exercises per order.

1. In your home directory create the directory `/linuxdatabase`.
2. Create the the file `create_users_table`.
3. Insert the content in the file [create_table_users.sql](/files/create_table_users.sql) into the file `create_users_table` (use the nano editor).
4. Create the the file `insert_users_table`.
5. Insert the content in the file [insert_table_users.sql](/files/create_table_users.sql) into the file `insert_users_table` (use the nano editor).
6. Add the files `create_users_table` and `insrt_users_table` to an tar archive with the name `dbscripts.tar`. 
7. Extract the files from the tar archice `dbscripts.tar` to the directory `extracted_dbscripts`.
8. List all the apt pakaches install in your system.
9. Update the apt list.
10. Install Postgres in your system.
11. Check if the Postgres service (postgres.service) is running.
12. Install the Postgres client.
13. Using the Postgres client (psql) connect to the Postgres server and list the databases. 


**THE END**






3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 
4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)


Next step: [Lab6](lab6.md)