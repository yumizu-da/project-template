# template-mzt-project

<center>

![image.png](docs/logos/facebook_cover_photo_2.png)

</center>

<div align="center">
    <img alt="python versions" src="https://img.shields.io/badge/python-3.10-blue?color=00adb5">
    <a href="https://opensource.org/licenses/MIT">
        <img alt="MIT License" src="https://img.shields.io/badge/license-MIT-green?color=00adb5">
    </a>
    <a href="https://github.com/PyCQA/flake8">
        <img alt="ruff" src="https://img.shields.io/badge/code%20style-ruff-000000.svg?color=00adb5">
    </a>
    <a href="https://github.com/python/mypy">
        <img alt="mypy" src="https://img.shields.io/badge/typing-mypy-blue?color=00adb5">
    </a>
</div>
<br />

<center>

VSCode × Docker × Pythonでの機械学習リポジトリのテンプレート🥳🥳🥳

</center>

## Description

機械学習プロジェクトを進める際に使用するテンプレートリポジトリです \
後述の方法でセッティングすることで, VSCodeの拡張機能, linter, formatterなどの環境が自動的に整えることができます

※ 使用する際は適宜`README.md`や`compose.yml`等を編集してください \
※ 自由気ままにアップデートしていきます

## Used libraries

- python3.10
- VSCode(devcontainer.json, setting.json, extensions.json)
- docker
- poetry
- Ruff
- mypy
- mdformat
- pytest
- azure-pipelines

## Environment

### dockerコンテナ ビルド & 起動

CPU環境用

```bash
docker compose up -d --build cpu
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
docker compose up -d --build gpu
```

### コンテナにアタッチ

次にVScode左下の`><`ボタンより`コンテナで再度開く`でコンテナにアクセス

### 拡張機能インストール

無事コンテナが開いたら, 「拡張機能の推奨事項があります」という通知が出ると思います.
この通知を許可すると, `.vscode/extensions.json`に記載されている拡張機能が自動的にインストールされます.
もし通知が出なかった場合は, 左のメニューから`拡張機能`を選択し, `フィルターアイコン`->`推奨`‐>`インストールアイコン`を押せば一括インストールできます.

## Appendix

### 全般

<https://github.com/cvpaperchallenge/Ascender> \
<https://qiita.com/edge-m/items/846715217fc3dd481a84> \
<https://zenn.dev/zenizeni/books/a64578f98450c2> \
<https://zenn.dev/alivelimb/articles/20220501-python-env> \
<https://github.com/arrowkato/my_favorite_python_env> \
<https://zenn.dev/jdbtisk/articles/e6ed54b38b6a45> \
<https://qiita.com/ShortArrow/items/f29e4d0df7d836eec770>

### VSCode基本設定 & 拡張機能

<https://qiita.com/yamaguchi2000/items/76060c08764ce4c704f9> \
<https://qiita.com/papi_tokei/items/c639dc7d1e0f5ad68a74> \
<https://qiita.com/nanato12/items/ddf26487eb30714251c3> \
<https://maasaablog.com/integrated-development-environment/visual-studio-code/923/> \
<https://zenn.dev/sayuki_coding/articles/c389d9ad48feaa> \
<https://zenn.dev/yumemi_inc/articles/396265425c9740> \
<https://zenn.dev/yosemat/articles/36638f17e9ded8> \
<https://zenn.dev/necscat/articles/d0946fec7f84be> \
<https://de-milestones.com/vscode-how-to-setup-recommended-tools/> \
<https://qiita.com/siruku6/items/6a8412c41616b558df66>

### linter/formatter

<https://qiita.com/sin9270/items/85e2dab4c0144c79987d> \
<https://qiita.com/fehde/items/723b619013dc86008acc> \
<https://qiita.com/ciscorn/items/bf78b7ad8e0e332f891b>

### Azure pipelines

<https://stackoverflow.com/questions/71423949/azure-pipelines-proper-way-to-use-poetry>
