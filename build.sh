#!/bin/sh

php82Version=php:8.2.29-fpm-alpine
php83Version=php:8.3.27-fpm-alpine
php84Version=php:8.4.14-fpm-alpine

docker login

# build and push base docker images

# vanilla wordpress
docker buildx build --platform linux/amd64 -t dustinscarberry/wordpress:php8.2 --build-arg PHP_VERSION=$php82Version -f images/vanilla/Dockerfile .
docker push dustinscarberry/wordpress:php8.2

docker buildx build --platform linux/amd64 -t dustinscarberry/wordpress:php8.2-cached --build-arg PHP_VERSION=$php82Version -f images/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.2-cached

docker buildx build --platform linux/amd64 -t dustinscarberry/wordpress:php8.3 --build-arg PHP_VERSION=$php83Version -f images/vanilla/Dockerfile .
docker push dustinscarberry/wordpress:php8.3

docker buildx build --platform linux/amd64 -t dustinscarberry/wordpress:php8.3-cached --build-arg PHP_VERSION=$php83Version -f images/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.3-cached

docker buildx build --platform linux/amd64 -t dustinscarberry/wordpress:php8.4 --build-arg PHP_VERSION=$php84Version -f images/vanilla/Dockerfile .
docker push dustinscarberry/wordpress:php8.4

docker buildx build --platform linux/amd64 -t dustinscarberry/wordpress:php8.4-cached --build-arg PHP_VERSION=$php84Version -f images/vanilla-cached/Dockerfile .
docker push dustinscarberry/wordpress:php8.4-cached