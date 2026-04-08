#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, command: $BASH_COMMAND"' ERR

echo "Hello World"
echo "I am learning Shell"
echoo "Printing error here"
echo "No errors here"