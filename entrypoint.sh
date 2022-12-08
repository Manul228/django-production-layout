#!/bin/sh

apt install 

python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn testproject.wsgi:application --bind 0.0.0.0:8080
