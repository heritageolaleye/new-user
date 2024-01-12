#! /bin/bash

read -p "please enter your username" username

# Add a new user

sudo useradd -m -s /bin/sh $username

read -s -p "please enter your password. password must have at least 8 characters" password

# password must have at least 8 characters.

if [ ${#password} -lt 8 ]; then

	sudo userdel -r $username

	
fi

#password must contain uppercase

if [[ ! $password =~ [A-Z] ]]; then
	echo "password must contain an uppercase letter"
	sudo userdel -r $username
	

fi

#password must have at least one digit

if [[ ! $password =~ [0-9] ]]; then
	echo "password must have a digit number"
	sudo userdel -r $username
	
fi


