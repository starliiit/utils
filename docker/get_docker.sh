#!/bin/bash 

set -xe

curl -sSL https://get.daocloud.io/docker > /tmp/install_docker.sh

sed -i "s@download.docker.com@mirrors.ustc.edu.cn/docker-ce@g" /tmp/install_docker.sh

source /tmp/install_docker.sh

# docker-compose
curl -L https://get.daocloud.io/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose