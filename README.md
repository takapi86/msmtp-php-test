
### 1. イメージをビルドします

```
docker compose build
```

### 2. mailcatcherを立ち上げます

```bash
docker compose up
```

### 3. mailcatcherをブラウザで開きます

http://localhost:1080/

### 4. スクリプトを実行して検証します

```bash
docker compose run --rm app php sendmail.php
```
