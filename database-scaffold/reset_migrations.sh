#!/bin/sh

ENV=$1

if [[ -z "$1" ]]
then
    echo "setting environment to `dev`"
    ENV="dev"
fi 

read -p "Are you sure to remove all objects from the aktivu schema? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # remove tables
    echo "Removing objects from Aktivu Schema..."
    db-migrate down -c 20 -e dev 
    
    echo "Resetting database config..."
    node reset_config.js
    echo "done! Bye :)"    
fi