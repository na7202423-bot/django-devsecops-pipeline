#!/bin/sh
set -e

# Wait for the web container (web:8000) to be available
echo "Waiting for Django web service..."
while ! nc -z web 8000; do
  sleep 0.1
done
echo "Django service ready!"

# Execute the default Nginx entrypoint command
exec nginx -g "daemon off;"