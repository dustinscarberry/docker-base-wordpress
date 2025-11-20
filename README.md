<img src="https://github.com/dustinscarberry/repo-ux/raw/master/banner/wordpress-docker-base-image.png" alt="Project banner image">

A base image for WordPress apps with variations for vanilla and bedrock.

## Current variants

### 8.x

Vanilla WordPress

### 8.x-cached

Vanilla WordPress with a fastcgi caching configuration

## Usage

```docker
FROM dustinscarberry/wordpress-base:8.2

# set workdir
WORKDIR /var/www/html

# copy app files to /var/www
COPY --chown=www-data:www-data . /var/www/html

# fix web permissions
RUN chown -R www-data:www-data *

EXPOSE 80
```

## Building / updating base boxes

```sh
./build.sh
```