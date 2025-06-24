#!/bin/bash 



# INTEGERS
# -eq = equal
# -ne = not_equal
# -gt = greater than



# -f = check for a file
# -d = check for a folder




# EXIT CODES 
# echo $? -> Command to check the exit codes
# exit -> return statement for a bash script, We can exit with the exit code



myname="hari"

if [ $myname == $USER ]
then
   echo  "Welcome Master"
fi

command=/usr/bin/htop

if [ -f $command ]
then
    echo "$command is available. lets run it....."
    exit 0
else
   echo "$command is NOT available. Installing it......."
   sudo apt update && sudo apt install htop
   exit 199
fi

$command 



