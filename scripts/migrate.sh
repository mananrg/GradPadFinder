#!/bin/bash
# SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"gandhimanan1@gmail.com"}
cd /app/src
/opt/venv/bin/python manage.py migrate --noinput
# /opt/venv/bin/python manange.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true
