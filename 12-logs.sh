#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this command with root user:"
    exit 1
fi

mkdir -p $LOG_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2: Failure"
    else
        echo "$2: Success"
    fi
}

dnf install nginx -y  &>> $LOG_FILE
VALIDATE $? "Nginx installation"

dnf install maven -y &>> $LOG_FILE
VALIDATE $? "Maven installation"