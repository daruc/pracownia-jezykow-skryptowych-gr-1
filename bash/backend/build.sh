#!/bin/bash
set -e

# Resolve project root directory based on this script location
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
BACKEND_DIR="$PROJECT_ROOT/backend"

echo "📦 Building Python backend…"
echo "Project root: $PROJECT_ROOT"
echo "Backend dir:  $BACKEND_DIR"

# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r "$BACKEND_DIR/requirements.txt"

echo "✅ Backend build complete"
