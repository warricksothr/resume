#!/usr/bin/env bash

# Script to build an HTML site from the PDF source
docker run -d -v $(pwd):/source sothr/pdf2htmlex /usr/bin/env bash /source/build-html-docker.sh
