#!/bin/bash -x
echo "User Registration Form"
checkFirstLast="^[A-Z]+[a-zA-Z]{2,}"
checkEmail="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z0-9A-Z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"

function checkFirstName(){
	read -p "Enter First Name :: " firstName
	if [[ $firstName =~ $checkFirstLast ]];
	then
        	echo "First Name is Valid" ;
	else
        	echo "First Name is Invalid";
	fi
}

function checkLastName(){
	read -p "Enter Last Name :: " lastName
        if [[ $lastName =~ $checkFirstLast ]];
        then
                echo "Last Name is Valid" ;
        else
                echo "Last Name is Invalid";
        fi
}

function checkEmail(){
	 read -p "Enter your Email:: " email
        if [[ $email =~ $checkEmail ]];
        then
                echo "Email is Valid" ;
        else
                echo "Email is Invalid";
        fi

}

checkFirstName
checkLastName
checkEmail
