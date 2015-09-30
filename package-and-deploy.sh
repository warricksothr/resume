#!/usr/bin/env bash

# Script to package the PDF and the html.
# Store them.
# flush the current directory
# checkout the gh-pages branch
# extract the updated site over the current
# add the changes
# commit the changes
# push the changes to github

cp DPSResume.pdf ..
cp ResumeSite.tar.gz ..

git checkout .
