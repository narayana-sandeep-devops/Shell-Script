#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"

if [ $USERID -ne 0 ]; then
    echo "Please run this command with root user:"
    exit 1
fi


VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2: Failure"
    else
        echo "$2: Success"
    fi
}

dnf install nginx -y  &>> 
VALIDATE $? "Nginx installation"

dnf install maven -y
VALIDATE $? "Maven installation"