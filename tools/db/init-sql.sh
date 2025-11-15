#!/bin/bash
set -e

echo "🔄 Testing DB connection..."
psql "host=${REAL_PG_HOST} dbname=${REAL_PG_DB} user=${REAL_PG_USER}" \
  -c "SELECT current_database();" || { echo "Connection failed"; exit 1; } 
echo "✅ Connection OK"

echo "🚀 Executing init.sql..."
psql "host=${REAL_PG_HOST} dbname=${REAL_PG_DB} user=${REAL_PG_USER}" \
  -f sql/init.sql || { echo "Connection failed"; exit 1; }
echo "🎉 init.sql executed successfully!"
