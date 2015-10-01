#!/usr/bin/env bash

cd /source

# Script to build a PDF from the latex source
latex --output-format pdf DPSResume.tex
chmod 777 DPSResume.pdf
