#### README

This is an example on how to automatically install a webserver via ansible

#### Requirements:
     ansible installed on management host
     access via ssh (with keys installed) on all CentOs 7 hosts you want to run install on
     sudo access setup for all remote hosts
     bash shell installed on management host 
     code in this repository:
           files/  hosts  html.yml  templates/  test.sh

     lorraine$ ls *
		hosts  html.yml  test.sh

		files:
		hello.html

		templates:
		httpd.conf.j2  ssl.conf.j2

#### Setup:
	On management host (with ansible installed and in your path):
	Update "hosts" file with desired webservers (place them under the [webservers] heading)
	Update "html.yml" file with user keys was set up for
	if bash is NOT at /bin/bash on management host, update test.sh with correct path

#### Run:
	./test.sh
         
#### Notes:
	This is using an older version of ansible (hence uses sudo in yaml file rather than becomes).   
	Tested from a laptop running virtual box running a CentOs 7 image 

#### Language choice:
	I like ansible as it only runs what it needs to and is really clean.   
	As verification needed to be done from local host for all newly installed hosts, I 
	created a small wrapper "test.sh" which made process easier as well as has the ansible commands
	if unfamiliar with ansible.


#### Background:
	This was an exercise to prove I could automatically install webservers for an interview
	It is somewhat useful - and if you don't know ansible may be helpful
