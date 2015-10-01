#!/usr/bin/env bash

cd /source

# Script to build an HTML site from the PDF source
pdf2htmlEX --embed cfijo --dest-dir /source/out /source/DPSResume.pdf

tar -czvf ResumeSite.tar.gz out/*
chmod 777 *.tar.gz
