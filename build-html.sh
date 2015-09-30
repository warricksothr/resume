#!/usr/bin/env bash

# Script to build an HTML site from the PDF source
docker run -d -P --name pdf2htmlex -v /pdf sothr/pdf2htmlex pdf2htmlex --embed cfijo --dest-dir out DPSResume.pdf

tar -czvf ResumeSite.tar.gz out/*
