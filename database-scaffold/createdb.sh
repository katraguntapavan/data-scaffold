#!/bin/sh

###########################################################
# script to initialize database
# @usage: ./createdb.sh "{REPLACE_WITH_ENV}"
###########################################################
ENV=$1

if [[ -z "$1" ]]
then
    echo "setting environment to `dev`"
    ENV="dev"
fi 

echo "installing db-migrate..."
npm install -g db-migrate

echo "installing db-migrate-pg..."
npm install -g db-migrate-pg

echo "printing db-migrate version..."
db-migrate --version

echo "setting up database config..."
node init.js

echo "creating database..."
db-migrate db:create aktivuDB -e $ENV 
