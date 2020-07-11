release: python manage.py migrate
release: psql postgresql-tapered-58818 < ndmadb.dump
web: gunicorn config.wsgi --log-file -
