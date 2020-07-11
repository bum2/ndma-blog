release: python manage.py migrate
release: psql DATABASE_URL < ndmadb.dump
web: gunicorn config.wsgi --log-file -
