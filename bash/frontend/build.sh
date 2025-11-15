#!/bin/bash
set -e

# Resolve script directory and project root without using git
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
FRONTEND_DIR="$PROJECT_ROOT/frontend"

echo "🌐 Building frontend…"
echo "Project root:  $PROJECT_ROOT"
echo "Frontend dir:  $FRONTEND_DIR"

# Install dependencies INTO the frontend directory
npm install "$FRONTEND_DIR"

# Run frontend build
npm run --prefix "$FRONTEND_DIR" build

# Remove root-level package.json files if present
rm -f "$PROJECT_ROOT/package.json" "$PROJECT_ROOT/package-lock.json"

echo "✅ Frontend build complete"
