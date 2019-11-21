#!/bin/bash -x
echo "User Registration Form"
checkFirstLast="^[A-Z][a-z]*{2,}$"
checkEmail="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z0-9A-Z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"
checkMobileNum="^[0-9]{2}[[:space:]][0-9]{10}$"
checkPassword="[a-zA-Z]*[A-Z]+[a-zA-Z]*$"

function checkFirstName(){
	read -p "Enter First Name :: " firstName 
	if [[ $firstName =~ $checkFirstLast ]] 
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

function checkMobileNum(){
        read -p "Enter your Mobile Number:: " mobileNum 
        if [[ $mobileNum =~ $checkMobileNum ]];
        then
                echo "Mobile is Valid" ;
        else
                echo "Email is Invalid";
        fi

}

function checkPassword(){
        read -p "Enter your password :: " password
        if [[ $password =~ $checkPassword ]] 
        then
                echo "Password is valid"
        else
                echo "Password is Invalid"
        fi
}




#checkFirstName
#checkLastName
#checkEmail
#checkMobileNum
checkPassword
