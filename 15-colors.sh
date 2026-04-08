#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


echo "$R Hello, $G Iam $Y Learning $N DEVOPS"


USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this command with root user: $N" | tee -a $LOG_FILE
    exit 1
fi

mkdir -p $LOG_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2: $R Failure $N" | tee -a $LOG_FILE
    else
        echo -e "$2: $G Success $Y" | tee -a $LOG_FILE
    fi
}


for package in $@
do
    dnf list installed $package %>> $LOG_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        dnf install $package -y
        VALIDATE $? "$package installation"
    else
        echo "$package already installed, $Y skipping $N"
    fi
done