#!/bin/sh

php81Version=php:8.1.13-fpm-alpine3.16

docker login

# build and push base docker images

# vanilla wordpress
docker build -t dustinscarberry/wordpress-base:php8.1 --build-arg PHP_VERSION=$php81Version -f images/vanilla/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1

docker build -t dustinscarberry/wordpress-base:php8.1-cached --build-arg PHP_VERSION=$php81Version -f images/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1-cached

# bedrock
docker build -t dustinscarberry/wordpress-base:php8.1-bedrock --build-arg PHP_VERSION=$php81Version -f images/bedrock/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1-bedrock

docker build -t dustinscarberry/wordpress-base:php8.1-bedrock-cached --build-arg PHP_VERSION=$php81Version -f images/bedrock-cached/Dockerfile .
docker push dustinscarberry/wordpress-base:php8.1-bedrock-cached
