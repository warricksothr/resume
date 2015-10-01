#!/usr/bin/env bash

# Script to package the PDF and the html.
# Store them.
# flush the current directory
# checkout the gh-pages branch
# extract the updated site over the current
# add the changes
# commit the changes
# push the changes to github

mkdir -p ~/tmp

cp DPSResume.pdf ~/tmp
cp ResumeSite.tar.gz ~/tmp

# Prepare the current directory
git clean -fq .
git clean -fXq
git checkout .

#Checkout the deployment directory
git checkout gh-pages

# Move and extract the files
tar -zxvf ~/tmp/ResumeSite.tar.gz .
rm ~/tmp/ResumeSite.tar.gz
mv ~/tmp/DPSResume.pdf .

# Add the files
git add .
git commit -m "Auto updating resume site files"
git push origin gh-pages

# Prepare the current directory
git clean -fq .
git clean -fdXq
git checkout master
