# Bash Scripting LAB7

## Exercise

Write a script that checks if the website `https://github.com/devopsdelivery/yoda` is up with `curl` and logs the result.

### TIP
```
WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")
```

Next setp: [Lab8](lab8.md)
