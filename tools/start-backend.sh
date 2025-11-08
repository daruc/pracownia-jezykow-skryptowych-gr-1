#!/bin/bash

source $(realpath `dirname $0`)/setup-vars.sh
${TOOLS_DIR}/build-backend.sh
test $? -ne 0 && { echo "build failed"; exit 1; }

export PYTHONPATH="$BACKEND_DIR"
pushd "$PROJECT_ROOT"

WORKERS=${GUNICORN_WORKERS:-2}
HOST=${1:-0.0.0.0}
PORT=${2:-5000}


exec gunicorn -w "$WORKERS" -b "$HOST:$PORT" backend.app:app
popd 