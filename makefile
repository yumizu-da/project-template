lint:
	black --check .
	isort --check --diff .
	mypy .

test:
	pytest

# ドキュメントをwebブラウザに表示 http://127.0.0.1:7000/
serve_doc:
	mkdocs serve

# export ドキュメント
export_doc:
	mkdocs build --clean
	htmlark site/print_page.html -o docs/documents.html
	rm -rf ./site
