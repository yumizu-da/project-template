# Mizuta env

VScode × Pythonでの開発環境のテンプレート \
以下のツールで構成

- python3.9
- VScode(devcontainer.json, setting.json)
- docker
- poetry
- black
- isort
- mypy
- pytest
- azure-pipelines
- mkdocs

## Environment

### dockerコンテナ　ビルド & 起動

macローカル環境用

``` bash
docker-compose up -d --build mac
```

<details><summary>macで以下のエラーが発生した場合</summary>

macで以下のエラーが出ることがある

``` bash
failed to solve with frontend dockerfile.v0: failed to create LLB definition: rpc error: code = Unknown desc = error getting credentials - err: exec: "docker-credential-desktop": executable file not found in $PATH, out: ``
```

その場合は以下の手順で`~/.docker/config.json`を修正すると解決する

- `sudo vi ~/.docker/config.json`でファイルを開く
- `credsStore` -> `credStore`に変更し保存

<https://stackoverflow.com/a/74413229>

</details>

VM環境用

``` bash
docker-compose up -d --build vm
```

### コンテナにアタッチ

まず`.devcontainer/devcontainer.json`の`service`が作成したコンテナサービス名に設定する \
前段でmac用コンテナを起動した場合は`mac`, VM用コンテナを起動した場合は`vm`と記載

次にVScode左下の`><`ボタンより`Open Folder in Container`でコンテナにアクセス

## Appendix

### 全般

<https://qiita.com/edge-m/items/846715217fc3dd481a84> \
<https://zenn.dev/zenizeni/books/a64578f98450c2> \
<https://zenn.dev/alivelimb/articles/20220501-python-env> \
<https://github.com/arrowkato/my_favorite_python_env> \
<https://zenn.dev/jdbtisk/articles/e6ed54b38b6a45> \
<https://qiita.com/ShortArrow/items/f29e4d0df7d836eec770>

### VScode 拡張機能

<https://qiita.com/yamaguchi2000/items/76060c08764ce4c704f9> \
<https://qiita.com/papi_tokei/items/c639dc7d1e0f5ad68a74> \
<https://qiita.com/nanato12/items/ddf26487eb30714251c3> \
<https://maasaablog.com/integrated-development-environment/visual-studio-code/923/>

### linter/formatter

<https://qiita.com/sin9270/items/85e2dab4c0144c79987d> \
<https://qiita.com/fehde/items/723b619013dc86008acc>

### Azure pipelines

<https://stackoverflow.com/questions/71423949/azure-pipelines-proper-way-to-use-poetry>

### mkdocs

<https://zenn.dev/mebiusbox/articles/81d977a72cee01> \
<https://timvink.github.io/mkdocs-print-site-plugin/>
