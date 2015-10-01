#!/usr/bin/env bash

cd /source

userid="$(cat userid.info)"

# Script to build an HTML site from the PDF source
pdf2htmlEX --embed cfijo --dest-dir out DPSResume.pdf
chown -R $userid:$userid out/
chmod -R 666 out/
chmod u+x out/

tar -czvf ResumeSite.tar.gz -C out/ .
chown $userid:$userid ResumeSite.tar.gz
chmod 666 ResumeSite.tar.gz
rm -rf out
