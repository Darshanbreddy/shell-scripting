#!/bin/bash

check_even_odd() {
    number=$1

    if (( number % 2 == 0 )); then
        echo "$number is even"
    else
        echo "$number is odd"
    fi
}

# Prompt user for input
echo -n "Enter a number: "
read num

# Call the function
check_even_odd $num
