# docker_ubuntu_php
Ubuntu OS で動作する php のコンテナです

1. Dockerビルドでimage作成
$ docker build -t img_ubu_php .
Imageファイルの確認

$ docker images
2. Dockerコンテナの作成
ボリュームなし

$ docker run -itd --name com_ubu_php img_ubu_php
ボリュームあり

$ docker run -itd --volume {HOST_OS_PATH}:/usr/app/src --name com_ubu_php img_ubu_php
{HOST_OS_PATH}は絶対パスを指定 例) windowsの場合 c:\data1\data2\

コンテナの確認

$ docker ps
または

$ docker ps -a
3. Dockerコンテナ実行
コンテナの外側からphpの実行

$ docker exec -it com_ubu_php php
コンテナにログイン

$ docker exec -it com_ubu_php sh
4. Dockerコンテナ起動/停止/再起動
コンテナ起動

$ docker start com_ubu_php
コンテナ停止

$ docker stop com_ubu_php
コンテナ再起動

$ docker restart com_ubu_php
5. Dockerコンテナ削除
コンテナ確認

$ docker ps -a
コンテナ削除

$ docker rm ｛コンテナID｝
6. Dockerイメージ削除
イメージ確認

$ docker images
イメージ削除

$ docker rmi ｛イメージID｝