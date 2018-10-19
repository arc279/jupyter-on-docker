docker で jupyter。

* miniconda使用
* 日本語フォント入れてあるのでmatplotlibで日本語使える
* 等幅フォント用のcss付き

## build

```sh
docker build -t kuryu/jupyter .
```

## run

```sh
docker-compose up
```

### ブラウザでアクセス

http://locahost:8888

トークンは `xxx` 。

### pip install したい

```sh
docker-compose exec jupyter bash
```

でコンテナに入って `pip install` で追加するか、

`requirements.txt` に追記してコンテナビルドし直す。
