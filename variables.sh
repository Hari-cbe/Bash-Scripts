#!/bin/bash


# A Variable does not persist, The variables will be removed when the terminal closes


name="Hari"


# We can call another commond for the result of the functions - SUBSHELL

now=$(date)

echo "My name is $name"

echo "current datetime is $now"

#there are 2 types of varibles user created variables and SYSTEM VARIABLES

echo "the Current User is $USER"


