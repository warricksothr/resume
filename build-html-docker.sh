#!/usr/bin/env bash

cd /source

# Script to build an HTML site from the PDF source
pdf2htmlEX --embed cfijo --dest-dir out DPSResume.pdf
chown -R root:root out
chmod -R 666 out

tar -czvf ResumeSite.tar.gz -C out .
chmod 666 *.tar.gz
#rm -rf out
