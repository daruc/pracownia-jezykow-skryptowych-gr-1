#!/bin/bash
set -e

# Resolve script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
BACKEND_DIR="$PROJECT_ROOT/backend"

# Defaults (można nadpisać ENV)
GUNICORN_WORKERS="${GUNICORN_WORKERS:-2}"
BACKEND_HOST="${BACKEND_HOST:-0.0.0.0}"
BACKEND_PORT="${BACKEND_PORT:-5000}"

echo "🚀 Starting backend..."
echo "PROJECT_ROOT: $PROJECT_ROOT"
echo "BACKEND_DIR:  $BACKEND_DIR"
echo "Workers:      $GUNICORN_WORKERS"
echo "Host:         $BACKEND_HOST:$BACKEND_PORT"

# Uruchom backend
export PYTHONPATH="$PROJECT_ROOT"

exec gunicorn \
    -w "$GUNICORN_WORKERS" \
    -b "$BACKEND_HOST:$BACKEND_PORT" \
    backend.app:app
