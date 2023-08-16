#!/bin/sh

php81Version=php:8.1.22-fpm-alpine
php82Version=php:8.2.8-fpm-alpine

docker login

# build and push base docker images

# vanilla wordpress
docker build -t dustinscarberry/wordpress:php8.1 --build-arg PHP_VERSION=$php81Version -f images/vanilla/Dockerfile .
docker push dustinscarberry/wordpress:php8.1

docker build -t dustinscarberry/wordpress:php8.1-cached --build-arg PHP_VERSION=$php81Version -f images/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.1-cached

docker build -t dustinscarberry/wordpress:php8.2 --build-arg PHP_VERSION=$php82Version -f images/vanilla/Dockerfile .
docker push dustinscarberry/wordpress:php8.2

docker build -t dustinscarberry/wordpress:php8.2-cached --build-arg PHP_VERSION=$php82Version -f images/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.2-cached

# bedrock
docker build -t dustinscarberry/wordpress:php8.1-bedrock --build-arg PHP_VERSION=$php81Version -f images/bedrock/Dockerfile .
docker push dustinscarberry/wordpress:php8.1-bedrock

docker build -t dustinscarberry/wordpress:php8.1-bedrock-cached --build-arg PHP_VERSION=$php81Version -f images/bedrock-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.1-bedrock-cached

docker build -t dustinscarberry/wordpress:php8.2-bedrock --build-arg PHP_VERSION=$php82Version -f images/bedrock/Dockerfile .
docker push dustinscarberry/wordpress:php8.2-bedrock

docker build -t dustinscarberry/wordpress:php8.2-bedrock-cached --build-arg PHP_VERSION=$php82Version -f images/bedrock-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.2-bedrock-cached