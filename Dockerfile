# ubuntu 20.04のOS取得
FROM ubuntu:20.04

# ####################
# for php
RUN apt-get update && apt-get install -y \
    python

# ####################
# working directory
WORKDIR /usr/app/src
