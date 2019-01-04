#!/bin/bash
# Strict mode
set -euo pipefail
IFS=$'\n\t'
# Create a self signed certificate for the user if one doesn't exist
if [ ! -f $PEM_FILE ]; then
      openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout $PEM_FILE -out $PEM_FILE \
              -subj "/C=XX/ST=XX/L=XX/O=dockergenerated/CN=dockergenerated"
fi
echo Key file $PEM_FILE generated and ready !! 
#jupyter notebook --no-browser --allow-root --port 8888 --ip=* --certfile=$PEM_FILE --NotebookApp.password="$HASH"
cat /banner.txt
jupyter lab --no-browser --allow-root --port 8888 --ip=0.0.0.0 --NotebookApp.token=''  --NotebookApp.password='' --NotebookApp.allow_origin=* --NotebookApp.base_url="${BASEURL}"
