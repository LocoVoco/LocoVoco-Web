#!/bin/bash

# building static site with jekyll
echo "building site with jekyll"
jekyll build -s "/Users/bowker/Src/LocoVoco/LocoVoco-Web"

# backup site with date folder
echo "backing up site"
DATE_WITH_TIME=$(date +%Y%m%d-%H%M%S)
ssh -i ~/SSH/LightsailDefaultKey-eu-west-2.pem ubuntu@35.176.130.117 "cp -r /var/www/html /var/www/html-$DATE_WITH_TIME"

# delete all files in folder
echo "clearing down site"
ssh -i ~/SSH/LightsailDefaultKey-eu-west-2.pem ubuntu@35.176.130.117 "rm -r /var/www/html/*"

# copy files across
echo "copying files to site"
scp -r -i ~/SSH/LightsailDefaultKey-eu-west-2.pem /Users/bowker/Src/LocoVoco/LocoVoco-Web/_site/* ubuntu@35.176.130.117:/var/www/html