# Solutions of Linux Labs

## Solutions LAB1

### 1. Show the login-in user
```console
whoami
```
<br>

### 2. Display current directory
```console
pwd
```
<br>

### 3. Change to /etc directory
```console
cd /etc
```
<br>

### 4. Change to home directory using 3 key presses
```console
cd
```
or
```console
cd ~
```
<br>

### 5. Go to parent directory of current directory
```console
cd ..
```
<br>

### 6. Go to root directory and list its content
```console
cd /
ls
```
<br>

### 7. List long listing of root directory
```console
ls -l /
```
<br>

### 8. List contents of /etc
```console
ls /etc
```
<br>

### 9. List contents of /bin and /sbin
```console
ls /bin /sbin
```
<br>

### 10. List contents of home directory in human-readable format
```console
ls -alh ~
```
<br>

### 11. Create testdir in home directory
```console
mkdir ~/linuxlab
```
<br>

### 12. Create newdir in home directory while in /etc directory
```console
cd /etc
mkdir ~/testlinuxdir
```
<br>

### 13. Create directories hierarchy ~/dir1/dir2/dir3
```console
mkdir -p ~/dir1/dir2/dir3
```
<br>

### 14. Remove testlinuxdir
```console
rm -r ~/testlinuxdir
```
<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions LAB2


<br>

### 1. Download the file postgres_users.sql
```console
wget https://github.com/devopsdelivery/yoda/blob/natixis-academy/linux/files/postgres_users.sql
```

<br>

### 2. Display size and type of postgres_users.sql
```console
ls -lh postgres_users.sql
```

<br>

### 3. Display the type of file of postgres_users.sql
```console
file postgres_users.sql
```

<br>

### 4. Move the file postgres_users.sql to /linuxlab
```console
mv postgres_users.sql /linuxlab
```

<br>

### 5. Create a copy of the file postgres_users.sql with the name postgres_newusers.sql
```console
cp postgres_users.sql postgres_newusers.sql
```

<br>

### 6. Rename the file postgres_newusers.sql to postgres_oldusers.sql
```console
mv postgres_newusers.sql postgres_oldusers.sql
```

<br>

### 7. Create and enter directory ~/touched
```console
mkdir ~/touched
cd ~/touched
```

<br>

### 8. Create today.txt and yesterday.txt files
```console
touch today.txt yesterday.txt
```

<br>

### 9. Change the creation date on yesterday.txt to match yesterday's date
```console
touch -d "yesterday" yesterday.txt
```

<br>

### 10. Copy yesterday.txt to copy.yesterday.txt
```console
cp yesterday.txt copy.yesterday.txt
```

<br>

### 11. Create directory ~/testbackup and copy all files from ~/touched to it
```console
mkdir ~/testbackup
cp -r ~/touched/* ~/testbackup
```

<br>

### 12. Use one command to remove the directory ~/testbackup and all files in it
```console
rm -r ~/testbackup
```

<br>

### 13. Create directory ~/etcbackup and copy all *.conf files from /etc including subdirectories
```console
mkdir ~/etcbackup
find /etc -type f -name "*.conf" -exec cp --parents {} ~/etcbackup \;
```



**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************
<br>

## Solutions LAB3
<br>

<br>

### 1. Display the first 12 lines of /etc/services
```console
head -n 12 /etc/services
```

<br>

### 2. Display the last line of /etc/passwd
```console
tail -n 1 /etc/passwd
```

<br>

### 3. Create a file named count.txt
```console
touch count.txt
```

<br>

### 4. Use cp to make a backup of this file to cnt.txt
```console
cp count.txt cnt.txt
```

<br>

### 5. Use more to display /var/log/syslog
```console
more /var/log/syslog
```

<br>

### 6. Use ls to find the two biggest file in /etc
```console
ls -lhS /etc | head -n 2
```

<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions LAB4
<br>

<br>

### 1. List all files in /etc ending with ".conf"
```console
ls /etc/*.conf
```

<br>

### 2. List all commands in /bin starting with "mk"
```console
ls /bin/mk*
```

<br>

### 3. List all commands in /bin containing digits
```console
ls /bin/*[0-9]*
```

<br>

### 4. List all directories in /etc containing digits
```console
ls -d /etc/*[0-9]*
```

<br>

### 5. List all files in /boot with name containing a dot (".") or a dash ("-")
```console
ls /boot/*[.-]*
```

<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions LAB5
<br>

### 1. Write the current date to the file /tmp/now
```console
date > /~/tmp/now
```

<br>

### 2. Copy the content of the file /etc/services to /tmp/services without using the commands “cp”, “mv” and “rm”
```console
cat /etc/services | tee /~/tmp/services
```

<br>

### 3. Sort all /proc directory content by line, and filter output to only display lines beginning with a digit
```console
ls -1 /proc | grep ^[0-9] | sort
```

<br>

### 4. List the filesystem root directory content by line, and filter output to replace all consonants with the character “_”
```console
ls -1 / | sed -e 's,[^aeiou],_,g'
```

<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions LAB6
<br>

### 1. In your home directory create the directory /linuxdatabase
```console
cd 
mkdir /linuxdatabase
```

<br>

### 2. Create the the file create_users_table
```console
touch create_users_table
```

<br>

### 3. Insert the content in the file create_table_users.sql into the file create_users_table
```console
nano create_users_table
```

<br>

### 4. Create the the file create_users_table
```console
touch insert_users_table
```

<br>

### 5. Insert the content in the file create_table_users.sql into the file create_users_table
```console
nano insert_users_table
```

<br>

### 6. Add the files create_users_table and insert_users_table to an tar archive with the name dbscripts.tar
```console
tar xvf dbscripts.tar create_users_table insert_users_table
```

<br>

### 7. Extract the files from the tar archice dbscripts.tar to the directory extracted_dbscripts
```console
tar xvf dbscripts.tar --one-top-level=extracted_dbscripts
```

<br>

### 8. List all the apt pakaches install in your system.
```console
sudo apt list
```

<br>

### 9. Update the apt list.
```console
sudo apt update
```

<br>

### 10. Install Postgres in your system.
```console
sudo apt install postgres
```

<br>

### 11. Check if the Postgres service (postgres.service) is running (hit: use systemctl).
```console
systemctl status postgres.service
```

<br>

### 12. Install the Postgres client.
```console
sudo apt install postgresql-client
```

<br>

### 13. Using the Postgres client (psql) connect to the Postgres server and list the databases.
```console
sudo -u postgres psql
```
```console
\l
```