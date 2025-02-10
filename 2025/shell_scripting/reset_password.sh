#!/bin/bash




reset_password() {
        read -p "Enter a username to reset the password : " username

        if ! id "$username" &>/dev/null ; then
             echo "Username '$username' does not exist. Please enter a valid username."
             exit 1
        fi

        read -s -p "Enter a new password :" password
        echo

        echo -e "$password\n$password" | sudo passwd "$username"

        if [[ $? == 0 ]]; then
          echo "$username password is successfully changed "
        else
          echo "Failed to reset the password"

        fi
}


reset_password
