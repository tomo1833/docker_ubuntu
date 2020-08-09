# ubuntu 20.04のOS取得
FROM ubutun:20.04

# ####################
# for php
RUN apt-get update && apt-get install -y \
    php

# ####################
# working directory
WORKDIR /usr/app/src
