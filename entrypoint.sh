#!/bin/bash

USER_ID=${LOCAL_USER_ID:-0}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -g "" gosuuser
export HOME=/home/gosuuser

exec /usr/local/bin/gosu gosuuser "$@"
