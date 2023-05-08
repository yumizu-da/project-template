# template-mzt-project

<p align="center">
    <img src="./logo.png">
</p>

<p align="center">
    <img alt="python versions" src="https://img.shields.io/badge/python-3.8%20%7C%203.9-blue">
    <a href="https://github.com/psf/black">
        <img alt="black" src="https://img.shields.io/badge/code%20style-black-000000.svg">
    </a>
    <a href="https://github.com/PyCQA/flake8">
        <img alt="flake8" src="https://img.shields.io/badge/code%20style-flake8-black">
    </a>
    <a href="https://pycqa.github.io/isort">
        <img alt="isort" src="https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=ef8336">
    </a>
    <a href="https://github.com/python/mypy">
        <img alt="mypy" src="https://img.shields.io/badge/typing-mypy-blue">
    </a>
</p>
<br />

VScode × Pythonでの開発環境のテンプレート

## Libraries in use

- python3.9
- VSCode(devcontainer.json, setting.json)
- docker
- poetry
- flake8
- black
- isort
- mypy
- mdformat
- pytest
- azure-pipelines
- mkdocs

## Environment

### dockerコンテナ ビルド & 起動

CPU環境用

```bash
docker-compose up -d --build cpu
```

<details><summary>macで以下のエラーが発生した場合</summary>

macで以下のエラーが出ることがある

```bash
failed to solve with frontend dockerfile.v0: failed to create LLB definition: rpc error: code = Unknown desc = error getting credentials - err: exec: "docker-credential-desktop": executable file not found in $PATH, out: ``
```

その場合は以下の手順で`~/.docker/config.json`を修正すると解決する

- `sudo vi ~/.docker/config.json`でファイルを開く
- `credsStore` -> `credStore`に変更し保存

<https://stackoverflow.com/a/74413229>

</details>

GPU環境用

```bash
docker-compose up -d --build gpu
```

### コンテナにアタッチ

まず`.devcontainer/devcontainer.json`の`service`が作成したコンテナサービス名に設定する \
前段でCPU環境用を起動した場合は`cpu`, GPU環境用を起動した場合は`gpu`と記載

次にVScode左下の`><`ボタンより`Open Folder in Container`でコンテナにアクセス

## Appendix

### 全般

<https://github.com/cvpaperchallenge/Ascender> \
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
