#!/bin/bash -x
echo "User Registration Form"
read -p "Enter First Name :: " firstName
checkPattern="^[A-Z]+[a-zA-Z]{2,}"
function CheckFirstName(){
	if [[ $firstName =~ $checkPattern ]];
	then
        	echo "First Name is Valid" ;
	else
        	echo "First Name is Invalid";
	fi
}
CheckFirstName
