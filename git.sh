#!/bin/bash

# Pushes current version to github

git add *.sh
git add *.ratdb
git add *.geo
git add *.md
git add mac/*.mac
git add mac/*.loop

DATE=`date +"%Y-%m-%d"`
git commit -m "${DATE}"

git push -u origin master