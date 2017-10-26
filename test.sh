#!/bin/bash

# setup webservers
ansible-playbook -i hosts html.yml

#Verify Worked
for i in `ansible --list-hosts webservers -i hosts`; do

    if  [ $(curl -sL -k -w "%{http_code}\\n" "https://${i}/hello.html" -o /dev/null | grep 200) ] ;
    	then echo "$i web page works"
    else
        echo "$i web page is not working"
    fi
done
