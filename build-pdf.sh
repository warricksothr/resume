#!/usr/bin/env bash

echo "$(id -u)" > userid.info

# Script to build a PDF from the latex source
docker run -v $(pwd):/source schickling/latex /usr/bin/env bash /source/build-pdf-docker.sh

rm userid.info
