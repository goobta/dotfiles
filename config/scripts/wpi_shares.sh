#!/bin/bash

# Set the username to a variable
uname="agupta4@wpi.edu"

# Get the password becuase storing confidential data in plain text is bad for the mind and the soul
echo Enter password for user $uname
read pword

# Parent directory for the files
parent="/home/agupta/Netdrives/WPI/"

drives=("academics"
		"dept"
		"home"
		"resources"
		"scratch_space"
		"software"
		)

for drive in "${drives[@]}"
do
	sudo mount -t cifs //storage.wpi.edu/$drive $parent$drive -o user=$uname,password=$pword
done
