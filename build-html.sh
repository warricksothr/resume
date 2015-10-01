#!/usr/bin/env bash

# Script to build an HTML site from the PDF source
docker run -d -v $(pwd):/source sothr/pdf2htmlex pdf2htmlEX --embed cfijo --dest-dir /source/out /source/DPSResume.pdf

tar -czvf ResumeSite.tar.gz out/*
