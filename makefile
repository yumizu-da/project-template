lint:
	black --check .
	isort --check --diff .
	mypy .

test:
	pytest

doc:
	mkdocs build --clean
	htmlark site/print_page.html -o docs/documents.html
	rm -rf ./site
