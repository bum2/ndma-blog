release: psql postgresql-tapered-58818 < ndmadb.dump
release: python manage.py migrate
web: gunicorn config.wsgi --log-file -
