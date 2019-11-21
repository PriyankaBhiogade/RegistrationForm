#!/bin/bash -x
echo "User Registration Form"
read -p "Enter First Name :: " firstName
read -p "Enter Last Name :: " lastName
checkPattern="^[A-Z]+[a-zA-Z]{2,}"
function CheckFirstName(){
	if [[ $firstName =~ $checkPattern ]];
	then
        	echo "First Name is Valid" ;
	else
        	echo "First Name is Invalid";
	fi
}

function CheckLastName(){
        if [[ $lastName =~ $checkPattern ]];
        then
                echo "Last Name is Valid" ;
        else
                echo "Last Name is Invalid";
        fi
}
CheckFirstName
CheckLastName
