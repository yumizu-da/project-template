lint:
	black --check .
	isort --check --diff .
	mypy .

test:
	pytest

doc:
	mkdocs serve
