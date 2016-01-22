#!/usr/bin/env bash

echo "$(id -u)" > userid.info

# Script to build a PDF from the latex source
docker run -v $(pwd):/source schickling/latex /usr/bin/env bash /source/build-resume-with-cover-letter-pdf-docker.sh $1

rm userid.info
