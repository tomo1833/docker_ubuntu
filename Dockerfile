# ubuntu 18.4のOS取得
FROM ubutun:18.4

# 実行ディレクトリ
WORKDIR /usr/app/src

#　Dockerコマンド

# 1. Dockerビルドでimage作成
#     $ docker build -t img_ubu .

# 2. Dockerコンテナの作成
#   Volumeなし
#     $ docker run -itd --name com_ubu img_ubu
#   Volumeあり
#     $ docker run -itd --volume /home/vagrant/Docker/ubu:/usr/app/src --name com_ubu img_ubu

# 3. Dockerコンテナ実行
#   ターミナル
#     $ docker exec -it com_ubu sh