release: python manage.py migrate
release: psql rocky-waters-34378 < ndmadb.dump
web: gunicorn config.wsgi --log-file -
