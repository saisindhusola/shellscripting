#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    #exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

#dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "Installing MySQL is ... SUCCESS"
else
    echo "Installing mySQL is ... FAILURE"
    exit1
fi


# dnf list installed mysql(packagename)    //to check whether it is already present or not
# $? //to check exit status

if [ $? -ne 0 ]
then 
    echo "MySQL is not installed... going to install it"
else
    echo "MySQL is already installed...Nothing to do"
    exit 1
fi
#=============================================================
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
