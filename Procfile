release: python manage.py migrate
release: psql postgres://sukggzgrxgtual:52d84de485cbb2e5642af5f200cfead1e592a2e8b825570c03b1a9d3707e8dc5@ec2-50-17-90-177.compute-1.amazonaws.com:5432/dakq01t96ige37 < ndmadb.dump
web: gunicorn config.wsgi --log-file -
