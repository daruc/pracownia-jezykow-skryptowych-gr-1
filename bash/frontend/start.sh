#!/bin/bash
set -e

# Resolve script directory and project root without git
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
FRONTEND_DIR="$PROJECT_ROOT/frontend"

echo "🚀 Starting frontend (Vite / React / Next / Vue)..."
echo "Project root:  $PROJECT_ROOT"
echo "Frontend dir:  $FRONTEND_DIR"

npm run --prefix "$FRONTEND_DIR" dev
