#!/bin/bash

NUM1=100
NUM2=200
NUM3=sandeep

SUM=$((NUM1+NUM3))

echo $SUM

FRUITS=("ORANGES" "APPLES" "MANGO")

echo ${FRUITS[@]}

echo "Fruits are: ${FRUITS[0]}"
echo "Fruits are: ${FRUITS[1]}"
echo "Fruits are: ${FRUITS[2]}"