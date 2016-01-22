#!/usr/bin/env bash

echo "$(id -u)" > userid.info

# Script to build an HTML site from the PDF source
docker run -v $(pwd):/source sothr/pdf2htmlex /usr/bin/env bash /source/build-html-resume-docker.sh

./cleanup-latex.sh

rm userid.info
