#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py makemigrations
python manage.py migrate
# python populate_catalog.py
# only populate the catalog the first time
python manage.py createsuperuser