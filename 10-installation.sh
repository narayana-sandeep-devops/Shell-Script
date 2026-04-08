#!/bin/bash

USERID=$(id-u)

if [$USERID -ne 0]; then
    echo "Please run this command with root user:"
    exit 1
fi

dnf install nginxds -y

if [$? -ne 0]; then
    echo "Installing Nginx: Failure"
else
    echo "Installing Nginx: Success"
fi