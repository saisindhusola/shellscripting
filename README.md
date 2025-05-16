# shellscripting
#!/bin/bash //Shebang



1. Create a repo in github
2. Clone/download the repo
3. add to staging/temp area.



git add. ; git commit -m

#Datatypes
==================================
int i-0
float
doubble
decimal
string
char
boolean
array arraylist set map

====================================
special variables in Shell
==========================
we no need to define the variable, shell will provide to us
$1
if you want all variables passed to script: $@
number of varibles passed: $#
script name: $0
present working directory: $PWD
home directory of the user who is running the script: $HOME
which user is running the scipt: $USER
PID (Process Instance ID)of the current script: $$
sleep 10 &
PID of the last command running in background:


====================================================================
Conditions
============
if(expression){
    this block runs if expression is true
}
else{
    this block runs if expression is false
}

if(!raining){
    take umbrella
}
else{
    no need of ubrella
}
raining false, !false.. false*false = true
if(!raining){
    
}
else{

}

write a program if given number is less than 10 or not

if(number < 10){
    print number is less than 10
}
else{
    print number is not less than 10
}

-gt --> greater than
-lt --> less than
-eq --> equal
-ne --> not equal


=======================================================================

Install mysql
================

1.user is running with root access or not 
2.if root user proceed to install
3.else show the error that please run with root access

Exit status
=====================
$?  to check exit status



Functions
===============================
a machine is functioning --> doing something


coffee maker
inputs: coffee beans, milk, water
output: coffee

function takes input and do soe wok, you can call whenever you require 
function coffeemaker(milk, coffee beans, water){
    boilwater
    crushbeans
    mix milk, water and powder
    return coffee
}
coffee Maker(milk, coffee beans, water)

repeated code you can keep it in function and call whenever you need.
