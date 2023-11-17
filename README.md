
### 1. イメージをビルドします

```
docker compose build
```

### 2. mailcatcherを立ち上げます

```bash
docker compose up
```

### 3. スクリプトを実行して検証します

```bash
docker compose run --rm app php sendmail.php
```