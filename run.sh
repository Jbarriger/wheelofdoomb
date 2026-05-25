#!/bin/sh
set -e

# Ensure data directory for SQLite
mkdir -p /data

# Start nginx in background
echo "Starting nginx..."
nginx -c /app/nginx/nginx.conf

# Start Flask-SocketIO server (eventlet)
echo "Starting Flask-SocketIO..."
cd /app
PYTHONPATH=/app exec python run.py
