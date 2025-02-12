#!/bin/bash


list_all_user(){
	echo "=========================List the user==============================="
        awk -F: '{ print $1 ,$3 }' /etc/passwd

}
	if [[ "$1" == "-l" || "$1" == "--list" ]]; then
	    list_all_user
	else 
	   echo "Not a valid point. Please use -l or --list to get the list"
	fi
