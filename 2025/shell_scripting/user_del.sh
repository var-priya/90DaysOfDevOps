del_user(){
    read -p "enter a useraname to delete:" username

    if id "$username" &>/dev/null ; then
          read -p "Delete home directory? [Y/n] " choice
    sudo userdel $username
    echo "$username deleted successfuly"
    fi

}

del_user
