#! /bin/bash

read -p "Please enter your username: " username

# Add a new user
sudo useradd -m -s /bin/sh $username

ntries=0;
# Add long a $ntries is less than 3 keep on
while [[ $ntries -lt 3 ]];
do
	read -s -p "Please enter your password: " password
	
	if [ ${#password} -lt 8 ]; then
 		# Password must have at least 8 characters.
		echo "password must have at least 8 characters";
  		let ntries++;
  
	elif [[ ! $password =~ [A-Z] ]]; then
 		#Password must contain uppercase
		echo "password must contain an uppercase letter";
  		let ntries++;
    
	elif [[ ! $password =~ [0-9] ]]; then
 		#Password must have at least one digit
		echo "password must have a digit number";
  		let ntries++;
  
  	else
   		#Passwd is strong;
       		echo "Strong password detected! User $username created successfully!"
	 	exit;
	fi;
done;

# Delete the user
sudo userdel -r $username
echo "Deleted user $username! Too many password tries (Weak Password Detected)"

