# WordPress Base Docker Image

## Current variants

### 8.1

Vanilla WordPress

### 8.1-cached

Vanilla WordPress with a fastcgi caching configuration

### 8.1-bedrock

Bedrock WordPress

### 8.1-bedrock-cached

Bedrock WordPress with a fastcgi caching configuration

## Usage

```docker
FROM dustinscarberry/wordpress-base:8.1

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
