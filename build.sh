#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py makemigrations
python manage.py migrate
python populate_catalog.py
python manage.py shell -c "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('alumnodb', 'alumnodb@uam.es', 'alumnodb')"

# IMPORTANT: comment and uncomment lines as the user needs, some will fail after first time deploying