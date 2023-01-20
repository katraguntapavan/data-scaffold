#!/bin/sh
###########################################################
# script to initialize database
# @usage: ./create.sh "{REPLACE_WITH_ENV}"
###########################################################
ENV=$1

if [[ -z "$1" ]]
then
    echo "setting environment to `dev`"
    ENV="dev"
fi 

echo "setting up database config..."
node create_config.js

echo "running database migrations..."
db-migrate up -e $ENV 
