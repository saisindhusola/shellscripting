#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    #exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

dnf list installed mysql 
#check already installed or not. If installed $? is 0, then
#If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then 
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y 
    if [ $? -eq 0 ]
    then
        echo "Installing MySQL is ... SUCCESS"
    else
        echo "Installing mySQL is ... FAILURE"
        exit1
    fi
else
    echo "MySQL is already installed...Nothing to do"
fi



dnf list installed nginx 
#check already installed or not. If installed $? is 0, then
#If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then 
    echo "nginx is not installed... going to install it"
    dnf install nginx -y 
    if [ $? -eq 0 ]
    then
        echo "Installing nginx is ... SUCCESS"
    else
        echo "Installing nginx is ... FAILURE"
        exit1
    fi
else
    echo "nginx is already installed...Nothing to do"
fi

dnf list installed python 
#check already installed or not. If installed $? is 0, then
#If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then 
    echo "pythonL is not installed... going to install it"
    dnf install python -y 
    if [ $? -eq 0 ]
    then
        echo "Installing python is ... SUCCESS"
    else
        echo "Installing python is ... FAILURE"
        exit1
    fi
else
    echo "python is already installed...Nothing to do"
fi

#==============================================================================

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    #exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

#Validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "Installing $2 is ... SUCCESS"
    else
        echo "Installing $2 is ... FAILURE"
        exit 1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo