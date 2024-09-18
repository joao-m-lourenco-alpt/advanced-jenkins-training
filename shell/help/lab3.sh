#!/bin/sh

# get all the files that ends with .txt
for file in *.txt; do
    mv "$file" "backup_$file"
done

echo "Files renamed successfully!"