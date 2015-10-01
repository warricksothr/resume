#!/usr/bin/env bash

# Simple script to build he PDF, build the html, and deploy them to the gh-pages branch
./build-pdf.sh && ./build-html.sh && ./package-and-deploy.sh
