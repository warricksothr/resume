#!/usr/bin/env bash

# Script to build a PDF from the latex source
docker run -v $(pwd):/source schickling/latex latex --output-format pdf /source/DPSResume.tex
