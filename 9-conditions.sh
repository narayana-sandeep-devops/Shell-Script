#!/bin/bash

NUMBER=$1

# -gt = greaterthan
# -lt = lessthan
# -eq = equal
# -ne = not equal

if [$NUMBER -gt 20]; then
    echo "Given Number: $NUMBER is Greater than 20"
elif [$NUMBER -eq 20]; then
    echo "Given number: $NUMBER is euqal to 20"
else
    echo "Given number: $NUMBER is lessthan 20"
fi