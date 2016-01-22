#!/usr/bin/env bash

cd /source

userid="$(cat userid.info)"

# Script to build a PDF from the latex source
latex --output-format pdf DPSResume.tex
chown $userid:$userid DPSResume.pdf
chmod 666 DPSResume.pdf
rm DPSResume.log
