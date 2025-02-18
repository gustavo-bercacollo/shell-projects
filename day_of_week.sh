#!/bin/bash

read -p 'Enter with a number between 1 and 7: ' NUMBER

case $NUMBER in
    "1")
        echo "Sunday"
        ;;
    "2")
        echo "Monday"
        ;;
    "3")
        echo "Tuesday"
        ;;
    "4")
        echo "Wednesday"
        ;;
    "5")
        echo "Thursday"
        ;;
    "6")
        echo "Friday"
        ;;
    "7")
        echo "Saturday"
        ;;
    *)
        echo "Invalid. Please, enter a value between 1-7"
        ;;
esac

