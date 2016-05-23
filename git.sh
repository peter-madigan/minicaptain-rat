#!/bin/bash
echo "Performing $1..."
if [ "$1" == "push" ]; then
# Pushes current version to github
    git add *.sh
    git add *.ratdb
    git add *.geo
    git add *.md
    git add */*.mac
    git add */*.loop
    git add */*.sh
    
    DATE=`date +"%Y-%m-%d"`
    git commit -m "${DATE}"
    
    git push -u origin master
elif [ "$1" == "pull" ]; then
# Gets current version from github    
    git fetch origin master
    git pull
else
    echo "ERROR - Option $1 not recognized!"
fi