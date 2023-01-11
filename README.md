# Mizuta env

VScode × Pythonでの開発環境のテンプレート \
以下のツールで構成

- python3.9
- VScode(devcontainer.json, setting.json)
- docker
- poetry
- black
- pflake8
- isort
- mypy
- pytest
- azure-pipelines
- mkdocs

## Environment

``` bash
docker-compose up -d --build
```

コンテナ作成後VScode左下の`><`ボタンより`Open Folder in Container`でコンテナにアクセス

## Appendix

### 全般

<https://qiita.com/edge-m/items/846715217fc3dd481a84> \
<https://zenn.dev/alivelimb/articles/20220501-python-env> \
<https://github.com/arrowkato/my_favorite_python_env> \
<https://zenn.dev/jdbtisk/articles/e6ed54b38b6a45> \
<https://qiita.com/ShortArrow/items/f29e4d0df7d836eec770>

### VScode 拡張機能

<https://qiita.com/yamaguchi2000/items/76060c08764ce4c704f9> \
<https://qiita.com/papi_tokei/items/c639dc7d1e0f5ad68a74> \
<https://qiita.com/nanato12/items/ddf26487eb30714251c3>

### linter/formatter

<https://qiita.com/sin9270/items/85e2dab4c0144c79987d> \
<https://qiita.com/fehde/items/723b619013dc86008acc>

### Azure pipelines

<https://stackoverflow.com/questions/71423949/azure-pipelines-proper-way-to-use-poetry>
