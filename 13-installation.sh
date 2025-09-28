#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run thisb script with root privelege"
    exit 1 # failure is other than 0
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi
}


dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install Nginx -y
VALIDATE $? "Nginx"

dnf install mongodb-mongosh -y
VALIDATE $? "mongosh"
