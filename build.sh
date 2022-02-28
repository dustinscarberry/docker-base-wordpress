#!/bin/sh

docker login

# build and push base docker images

# vanilla wordpress
docker build -t dustinscarberry/wordpress-base:php8.1 -f 8.1/vanilla/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1

docker build -t dustinscarberry/wordpress-base:php8.1-cached -f 8.1/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1-cached

# bedrock
docker build -t dustinscarberry/wordpress-base:php8.1-bedrock -f 8.1/bedrock/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1-bedrock

docker build -t dustinscarberry/wordpress-base:php8.1-bedrock-cached -f 8.1/bedrock-cached/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1-bedrock-cached
