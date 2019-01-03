#!/bin/bash
# Strict mode
set -euo pipefail
IFS=$'\n\t'
# Create a self signed certificate for the user if one doesn't exist
if [ ! -f $PEM_FILE ]; then
      openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $PEM_FILE -out $PEM_FILE \
              -subj "/C=XX/ST=XX/L=XX/O=dockergenerated/CN=dockergenerated"
  fi
  # Create the hash to pass to the IPython notebook, but don't export it so it doesn't appear
  # as an environment variable within IPython kernels themselves
  HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))")
  unset PASSWORD
  #jupyter notebook --no-browser --allow-root --port 8888 --ip=* --certfile=$PEM_FILE --NotebookApp.password="$HASH"
  cat banner.txt
  jupyter lab --no-browser --allow-root --port 8888 --ip=* --NotebookApp.password="" --NotebookApp.allow_origin=* --NotebookApp.base_url="${BASEURL}"
