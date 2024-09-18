#! /bin/sh

LOG_FILE="resource_monitor.log"
ALERT_THRESHOLD_CPU=80
ALERT_THRESHOLD_MEMORY=90
ALERT_THRESHOLD_DISK=85
ALERT_FILE="resource_alert.log"

# function to check CPU usage
check_cpu_usage() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
    if [ $(echo "$CPU_USAGE > $ALERT_THRESHOLD_CPU" | bc) ]; then
        echo "$(date +"%Y-%m-%d %H:%M:%S") - WARNING: CPU usage is at $CPU_USAGE%." >> $ALERT_FILE
        echo "Alert: CPU usage exceeds threshold: $CPU_USAGE%"
    fi
    echo "$(date +"%Y-%m-%d %H:%M:%S") - CPU usage: $CPU_USAGE%" >> $LOG_FILE
}

# function to check memory usage
check_memory_usage() {
    MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    if [ $(echo "$MEMORY_USAGE > $ALERT_THRESHOLD_MEMORY" | bc ) ]; then
        echo "$(date +"%Y-%m-%d %H:%M:%S") - WARNING: Memory usage is at $MEMORY_USAGE%." >> $ALERT_FILE
        echo "Alert: Memory usage exceeds threshold: $MEMORY_USAGE%"
    fi
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Memory usage: $MEMORY_USAGE%" >> $LOG_FILE
}

# function to check disk usage
check_disk_usage() {
    DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
    if [ "$DISK_USAGE" -gt "$ALERT_THRESHOLD_DISK" ]; then
        echo "$(date +"%Y-%m-%d %H:%M:%S") - WARNING: Disk usage is at $DISK_USAGE%." >> $ALERT_FILE
        echo "Alert: Disk usage exceeds threshold: $DISK_USAGE%"
    fi
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Disk usage: $DISK_USAGE%" >> $LOG_FILE
}

# infinite loop to monitor resources every 1 minute
while true; do
    check_cpu_usage
    check_memory_usage
    check_disk_usage
    sleep 300  # Sleep for 1 minute (60 secs)
done