#!/bin/sh
source venv/bin/activate

exec gunicorn -b :5000 --workers 3 --threads 3 --access-logfile - --error-logfile - main:app