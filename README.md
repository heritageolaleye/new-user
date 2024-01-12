This is a script to create a new user with a password.

I am trying to get the hang of bash. This script helps to create a new user with some password policies instead of using useradd and passwd on the terminal.

The password must contain 8 characters, uppercase, lowercase with at least a digit number also the script has to be run by sudo privilege.This condition strengthen the effectivenes of a user password against a brute force attempt. If the password doesn't contain at least one of the following condition,then the user will be deleted automatically.

Hopefully, I will keep updating this script as I am learning more on bash. 
