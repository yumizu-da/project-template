.PHONY: format
format:
	rye run ruff format .
	rye run mdformat *.md

.PHONY: lint
lint:
	rye run ruff check .
	rye run mypy .
	rye run mdformat --check *.md

.PHONY: test
test:
	rye run pytest tests -s
