# Solutions of Shell Scripting Labs

## Solutions Lab1

<br>

```bash
#!/bin/bash

# Ask for first name
echo "What is your first name?"
read first_name

# Ask for last name
echo "What is your last name?"
read last_name

# Ask for birthplace
echo "Where were you born?"
read birth_place

# Display message
echo "Nice to meet you $first_name $last_name from $birth_place!"
```

<br><br><br>

## Solutions Lab2

<br>

```bash
#!/bin/bash

# Check if three arguments were provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <number1> <number2> <number3>"
    exit 1
fi

# Check if each number is even or odd
for number in "$@"
do
    if [ $((number%2)) -eq 0 ]; then
        even_odd="even"
    else
        even_odd="odd"
    fi
    echo "Number $number is $even_odd"
done
```
