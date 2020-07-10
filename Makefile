pylint:
	isort --recursive ndma_blog --skip project_dir/wsgi.py --skip-glob "*/migrations/*" --skip-glob "*/node_modules/*"
	flake8 ndma_blog
