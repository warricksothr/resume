#!/usr/bin/env bash

# Script to build a PDF from the latex source
docker run -d -P --name latex -v /latex narf/latex latex --output-format pdf DPSResume.tex
