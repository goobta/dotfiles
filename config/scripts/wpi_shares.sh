#!/bin/bash

# Set the username to a variable
uname="agupta4@wpi.edu"
user_id=1000
group_id=100

# Get the password becuase storing confidential data in plain text is bad for the mind and the soul
echo Enter password for user $uname
read -s pword

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
    sudo mount -t cifs //storage.wpi.edu/$drive $parent$drive -o user=$uname,password=$pword,vers=3.0,uid=$user_id,gid=$group_id
done
