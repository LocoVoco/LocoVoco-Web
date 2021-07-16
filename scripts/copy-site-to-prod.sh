#!/bin/bash

# backup site with date folder
echo "backing up site"
DATE_WITH_TIME=$(date +%Y%m%d-%H%M%S)
ssh -i ~/SSH/LightsailDefaultKey-eu-west-2.pem ubuntu@35.177.218.127 "cp -r /var/www/html /var/www/html-$DATE_WITH_TIME"

# delete all files in folder
echo "clearing down site"
ssh -i ~/SSH/LightsailDefaultKey-eu-west-2.pem ubuntu@35.177.218.127 "rm -r /var/www/html/*"

# copy files across
echo "copying files to site"
scp -r -i ~/SSH/LightsailDefaultKey-eu-west-2.pem /Users/bowker/Src/LocoVoco/LocoVoco-Web/* ubuntu@35.177.218.127:/var/www/html