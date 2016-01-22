#!/usr/bin/env bash

cd /source

userid="$(cat userid.info)"

# Get PDFJam to combine the pdf's
#curl -LSO http://www2.warwick.ac.uk/fac/sci/statistics/staff/academic/firth/software/pdfjam/pdfjam_latest.tgz
#tar -zxvf pdfjam_latest.tgz
#export PATH="$PWD/pdfjam/bin:$PATH"

# Script to build a PDF from the latex source
latex --output-format pdf DPSResume.tex
chown $userid:$userid DPSResume.pdf
chmod 666 DPSResume.pdf
latex --output-format pdf ${1}.tex
chown $userid:$userid ${1}.pdf
chmod 666 ${1}.pdf

outfile="${1}_with_Resume.pdf"
pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --no-landscape --outfile $outfile ${1}.pdf DPSResume.pdf
#pdfjoin ${1}.pdf DPSResume.pdf --no-landscape --outfile $outfile

chown $userid:$userid $outfile
chmod 666 $outfile

rm DPSResume.log
rm ${1}.log
