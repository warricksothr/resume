#!/usr/bin/env bash

# Script to package the PDF and the html.
# Store them.
# flush the current directory
# checkout the gh-pages branch
# extract the updated site over the current
# add the changes
# commit the changes
# push the changes to github

cp DPSResume.pdf ~
cp ResumeSite.tar.gz ~

# Prepare the current directory
git clean -fq .
git clean -Xq
git checkout .

#Checkout the deployment directory
git checkout tags/gh-pages

# Copy the files
tar -zxvf ~/ResumeSite.tar.gz .
cp ~/DPSResume.pdf .

# Add the files
git add .
git commit -m "Auto updating resume site files"
git push origin gh-pages
