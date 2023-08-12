.PHONY: format
format:
	poetry run black .
	poetry run isort .
	poetry run mdformat *.md

.PHONY: lint
lint:
	poetry run pflake8 .
	poetry run black --check .
	poetry run isort --check --diff .
	poetry run mypy .
	poetry run mdformat --check *.md

.PHONY: test
test:
	poetry run pytest tests -s
