
#!/bin/bash

# Simple Interest Calculator
# Formula: (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter principal amount: " principal
read -p "Enter annual interest rate (%): " rate
read -p "Enter time in years: " time

if [[ ! "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   [[ ! "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   [[ ! "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid non-negative numbers."
    exit 1
fi

awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN {
        printf "Simple Interest: %.2f\n", (p * r * t) / 100
    }'
