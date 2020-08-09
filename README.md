# docker_alpine_php

Ubuntu OS で動作する php のコンテナです

## 1. Dockerビルドでimage作成

```sh
$ docker build -t img_ubu_php .
```

Imageファイルの確認

```sh
$ docker images
```

## 2. Dockerコンテナの作成

ボリュームなし

```sh
$ docker run -itd --name com_ubu_php img_ubu_php
```

ボリュームあり

```sh
$ docker run -itd --volume {HOST_OS_PATH}:/usr/app/src --name com_ubu_php img_ubu_php
```
{HOST_OS_PATH}は絶対パスを指定
例) windowsの場合 c:\data1\data2\

コンテナの確認
```sh
$ docker ps
```

または

```sh
$ docker ps -a
```

## 3. Dockerコンテナ実行

コンテナの外側からphpの実行

```sh
$ docker exec -it com_ubu_php php
```

コンテナにログイン

```sh
$ docker exec -it com_ubu_php sh
```

## 4. Dockerコンテナ起動/停止/再起動

コンテナ起動

```sh
$ docker start com_ubu_php
```

コンテナ停止

```sh
$ docker stop com_ubu_php
```

コンテナ再起動

```sh
$ docker restart com_ubu_php
```

## 5. Dockerコンテナ削除

コンテナ確認

```sh
$ docker ps -a
```

コンテナ削除

```sh
$ docker rm ｛コンテナID｝
```

## 6. Dockerイメージ削除

イメージ確認

```sh
$ docker images
```

イメージ削除

```sh
$ docker rmi ｛イメージID｝
```