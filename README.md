# TypeScript Dev Environment

このプロジェクトは、TypeScriptの開発環境をDockerコンテナで構築し、ローカル環境の差異を減らすことを目的としています。

---

## 必要条件

- Docker
- Docker Compose

Docker Desktop をインストールしていれば問題ありません。

---

## セットアップと起動

リポジトリをクローンする

```bash
git clone <リポジトリURL>
cd typescript-dev
```

Dockerコンテナをビルドして起動する

```bash
docker compose up --build
```

ブラウザまたはAPIクライアントで http://localhost:3000 にアクセス（もしAPIやWebサーバーがある場合）。

## 開発作業

- ソースコードは src/ ディレクトリに置いてください。
- ホスト側のファイル変更は自動的にコンテナに反映されます。
- 開発用コマンドは npm run dev で起動されます（Dockerコンテナ内で実行されます）。

## その他コマンド

コンテナ停止

```bash
docker compose down
```

コンテナ内に入る（シェルを開く）

```bash
docker compose exec app sh
```

## 注意点

- node_modules はコンテナ内で管理されます。ローカルに node_modules は作成されません。
- .env ファイルを使用する場合は .gitignore に追加し、環境変数の管理に注意してください。

## よくある質問

```
Q. npmやNode.jsをローカルにインストールする必要はありますか？
→ Dockerコンテナ内で動作するため、ローカルにインストールする必要はありません。

Q. 依存パッケージの追加や更新はどうすればいいですか？
→ package.json を更新後、コンテナを再ビルドしてください。

    docker compose build
    docker compose up
```

## ライセンス

MIT License
