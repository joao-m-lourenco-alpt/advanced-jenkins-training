# Solutions of Linux Labs

## Solutions Lab1


<br>

### Display current directory
```console
pwd
```

<br>

### Change to /etc directory
```console
<b>cd /etc</b>
```
<br>

### Change to home directory using 3 key presses
```console
cd
```
<br>

### Change to /boot/grub directory using 11 key presses
```console
```
<br>cd /b<Tab>/gru<Tab>

### Note: Use Tab to autocomplete the directory name.
```console
```
<br>

### Go to parent directory of current directory
```console
cd ..
```
<br>

### Go to root directory and list its content
```console
cd /
ls
```
<br>

### List long listing of root directory
```console
ls -l /
```
<br>

### List contents of /etc
```console
ls /etc
```
<br>

### List contents of /bin and /sbin
```console
ls /bin /sbin
```
<br>

### List contents of home directory in human-readable format
```console
ls -alh ~
```
<br>

### Create testdir in home directory
```console
mkdir ~/testdir
```
<br>

### Create newdir in home directory while in /etc directory
```console
cd /etc
mkdir ~/newdir
```
<br>

### Create directories hierarchy ~/dir1/dir2/dir3
```console
mkdir -p ~/dir1/dir2/dir3
```
<br>

### Remove testdir
```console
rm -r ~/testdir
```
<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions Lab2

<br>

### Display size and type of /bin/cat, /etc/passwd and /usr/bin/passwd
```console
ls -lh /bin/cat /etc/passwd /usr/bin/passwd
```

<br>

### Download dummy.pdf and logo.png using wget
```console
wget https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf
wget https://d33wubrfki0l68.cloudfront.net/b5759d3228a9bc5fcf2a87cb7175eafc1d417c4b/4de06/events/2023-melbourne/logo.png
```

<br>

### Display the type of file of logo.png and dummy.pdf
```console
file logo.png dummy.pdf
```

<br>

### Rename logo.png to logo.pdf
```console
mv logo.png logo.pdf
```

<br>

### Display type of file of logo-d2si.pdf and d2si-mag-nouveaux-mc3a9tiers_2015.pdf
```console
file logo-d2si.pdf d2si-mag-nouveaux-mc3a9tiers_2015.pdf
```

<br>

### Create and enter directory ~/touched and create today.txt and yesterday.txt
```console
mkdir ~/touched
cd ~/touched
touch today.txt yesterday.txt
```

<br>

### Change the creation date on yesterday.txt to match yesterday's date
```console
touch -d "yesterday" yesterday.txt
```

<br>

### Copy yesterday.txt to copy.yesterday.txt
```console
cp yesterday.txt copy.yesterday.txt
```

<br>

### Create directory ~/testbackup and copy all files from ~/touched to it
```console
mkdir ~/testbackup
cp -r ~/touched/* ~/testbackup
```

<br>

### Use one command to remove the directory ~/testbackup and all files in it
```console
rm -r ~/testbackup
```

<br>

### Create directory ~/etcbackup and copy all *.conf files from /etc including subdirectories
```console
mkdir ~/etcbackup
find /etc -type f -name "*.conf" -exec cp --parents {} ~/etcbackup \;
```



**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************
<br>

## Solutions Lab3
<br>

<br>

### Display the first 12 lines of /etc/services
```console
head -n 12 /etc/services
```

<br>

### Display the last line of /etc/passwd
```console
tail -n 1 /etc/passwd
```

<br>

### Create a file named count.txt
```console
touch count.txt
```

<br>

### Use cp to make a backup of this file to cnt.txt
```console
cp count.txt cnt.txt
```

<br>

### Use more to display /var/log/syslog
```console
more /var/log/syslog
```

<br>

### Use ls to find the biggest file in /etc
```console
ls -lhS /etc | head -n 2
```

<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions Lab4
<br>

<br>

### List all files in /etc ending with ".conf"
```console
ls /etc/*.conf
```

<br>

### List all commands in /bin starting with "mk"
```console
ls /bin/mk*
```

<br>

### List all commands in /bin containing digits
```console
ls /bin/*[0-9]*
```

<br>

### List all directories in /etc containing digits
```console
ls -d /etc/*[0-9]*
```

<br>

### List all files in /boot with name containing a dot (".") or a dash ("-")
```console
ls /boot/*[.-]*
```

<br>

### List all files in /etc using echo
```console
echo /etc/*
```

<br>

**************************************************************************************************************
**************************************************************************************************************
**************************************************************************************************************

<br>

## Solutions Lab5
<br>

<br>

### Write the current date to the file /tmp/now
```console
date > /tmp/now
```

<br>

### Copy the content of the file /etc/services to /tmp/services without using the commands “cp”, “mv” and “rm”
```console
cat /etc/services | tee /tmp/services
```

<br>

### Sort all /proc directory content by line, and filter output to only display lines beginning with a digit
```console
ls -1 /proc | grep ^[0-9] | sort
```

<br>

### List the filesystem root directory content by line, and filter output to replace all consonants with the character “_”
```console
ls -1 / | sed -e 's,[^aeiou],_,g'
```

