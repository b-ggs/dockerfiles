#!/bin/sh

set -e

if [ -n "$S3_ACCESS" ] && [ -n "$S3_SECRET" ]; then
  sed -i "s/s3_access/$S3_ACCESS/g" /root/.ia
  sed -i "s/s3_secret/$S3_SECRET/g" /root/.ia

  exec tubeup "$@"
else
  echo "Please supply S3_ACCESS and S3_SECRET via environment variables" 1>&2;
fi
