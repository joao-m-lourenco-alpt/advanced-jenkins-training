#!/bin/sh

for file in *.log; do
    sed -i 's/ERROR/WARNING/g' "$file"
done

echo "Text replacement completed in all log files."