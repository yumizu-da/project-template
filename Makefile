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
	poetry run pytest tests

.PHONY: serve_doc
serve_doc:
	poetry run mkdocs serve

.PHONY: export_doc
export_doc:
	poetry run mkdocs build --clean
	poetry run htmlark site/print_page.html -o docs/documents.html
	poetry run rm -rf ./site
