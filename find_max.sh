#!/bin/bash

# Initialize variables
COUNTER=0
MAX=0

echo "Hey there! This program returns the largest number entered by you :)"

# Loop to prompt for numbers
while [ $COUNTER -lt 5 ]; do
    # If COUNTER is 0, ask for the first number
    if [ $COUNTER -eq 0 ]; then
        read -p "Enter a number: " NUMBER
    else
        # For subsequent numbers, ask with a different message
        read -p "Enter another number: " NUMBER
    fi

    # Check if the entered value is a letter
    if [[ ! "$NUMBER" =~ ^[0-9]+$ ]]; then
        echo "Enter with a valid number, please"
        continue
    fi

    # Check if the entered number is greater than the current MAX
    if [ "$NUMBER" -gt "$MAX" ]; then
        MAX=$NUMBER
    fi

    # Increment the counter
    ((COUNTER++))
done

# Display the largest number
echo "The largest number is: $MAX"
