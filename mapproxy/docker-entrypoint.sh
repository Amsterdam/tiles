#!/usr/bin/env bash

set -e
set -u

echo Create start script
mapproxy-util create -t wsgi-app -f /app/mapproxy.yaml --force /app/app.py

echo Starting server
uwsgi --wsgi-file /app/app.py --wsgi-disable-file-wrapper
