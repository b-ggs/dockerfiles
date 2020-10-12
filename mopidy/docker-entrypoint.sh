#!/usr/bin/env bash

set -euxo pipefail

if [ "$1" == "docker-start" ]; then
  shift

  mopidy local scan
fi

exec "$@"
