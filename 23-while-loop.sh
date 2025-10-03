#!/bin/bash

# count=5

# echo "Starting countdown..."

# while [ $count -gt 0 ]
# do
#   echo "Time left: $count"
#   sleep 1
#   count=$((count - 1))
# done

# echo "Times up!"

# Read the file line by line
while IFS= read -r line; do
    # Process each line here
    echo "Processing line: $line"
    # You can perform other commands or operations using the '$line' variable
done < "20-script-01.sh"