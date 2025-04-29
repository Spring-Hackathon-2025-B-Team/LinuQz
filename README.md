# LinuQz
## 環境構築手順(Docker)

1. ビルド
```bash
docker compose build
# キャッシュを使わない場合は以下のコマンド
docker compose build --no-cache
```

2. コンテナを起動
```bash
docker compose up -d
```

3. マイグレーションの実行(初回のみ)
```bash
docker exec -it linuqz-web-1 python manage.py migrate
```

4. ブラウザで確認
http://localhost:8000 を開く

下記画面が表示されれば問題なく動作しています！
<img width="1728" alt="Image" src="https://github.com/user-attachments/assets/1d5217f9-a8c8-4815-9fc0-2b5d35b979bd" />