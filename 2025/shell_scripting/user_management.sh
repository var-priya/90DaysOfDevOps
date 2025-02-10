#!/bin/bash


create_user(){
    read -p "enter new username :" username
    
    if id "$username" &>/dev/null ; then
	    echo "user $username is already exist "
     exit 1
    fi
    read -s -p "enter the password :" password 

    sudo useradd -m $username
    echo -e "$password\n$password" | sudo passwd "$username"
    echo "$username created successfuly"

}



create_user



del_user(){
    read -p "enter a useraname to delete:" username

    if id "$username" &>/dev/null ; then
	  read -p "Delete home directory? [Y/n] " choice
    sudo userdel $username
    echo "$username deleted successfuly"
    fi

}

del_user

