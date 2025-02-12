#!/bin/bash


list_all_user(){
	echo "=========================List the user==============================="
        awk -F: '{ print $1 ,$3 }' /etc/passwd
}



list_all_user
