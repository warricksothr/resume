#!/usr/bin/env bash

cd /source

userid="$(cat userid.info)"

# Get PDFJam to combine the pdf's
curl -LSO http://www2.warwick.ac.uk/fac/sci/statistics/staff/academic/firth/software/pdfjam/pdfjam_latest.tgz
tar -zxvf pdfjam_latest.tgz
export PATH="$PWD/pdfjam/bin:$PATH"

# Script to build a PDF from the latex source
latex --output-format pdf DPSResume.tex
latex --output-format pdf ${1}.tex

outfile="DPSResume_With_Coverletter.pdf"
pdfjoin ${1}.pdf DPSResume.pdf --outfile $outfile

chown $userid:$userid $outfile
chmod 666 $outfile

rm DPSResume.log
rm ${1}.log
