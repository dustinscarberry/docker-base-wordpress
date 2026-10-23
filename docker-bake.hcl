variable "PHP82_VERSION" {
  default = "php:8.2.35-fpm-alpine"
}

variable "PHP83_VERSION" {
  default = "php:8.3.36-fpm-alpine"
}

variable "PHP84_VERSION" {
  default = "php:8.4.27-fpm-alpine"
}

variable "PHP85_VERSION" {
  default = "php:8.5.12-fpm-alpine"
}

target "vanilla_base" {
  context = "."
  dockerfile = "images/vanilla.dockerfile"
  platforms = ["linux/amd64"]
}

target "vanilla_cached" {
  context = "."
  dockerfile = "images/vanilla-cached.dockerfile"
  platforms = ["linux/amd64"]
}

group "default" {
  targets = ["8_2", "8_3", "8_4", "8_5", "8_2_cached", "8_3_cached", "8_4_cached", "8_5_cached"]
}

target "8_2" {
  inherits = ["vanilla_base"]
  args = {
    PHP_VERSION = "${PHP82_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.2"]
}

target "8_3" {
  inherits = ["vanilla_base"]
  args = {
    PHP_VERSION = "${PHP83_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.3"]
}

target "8_4" {
  inherits = ["vanilla_base"]
  args = {
    PHP_VERSION = "${PHP84_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.4"]
}

target "8_5" {
  inherits = ["vanilla_base"]
  args = {
    PHP_VERSION = "${PHP85_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.5"]
}

target "8_2_cached" {
  inherits = ["vanilla_cached"]
  args = {
    PHP_VERSION = "${PHP82_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.2-cached"]
}

target "8_3_cached" {
  inherits = ["vanilla_cached"]
  args = {
    PHP_VERSION = "${PHP83_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.3-cached"]
}

target "8_4_cached" {
  inherits = ["vanilla_cached"]
  args = {
    PHP_VERSION = "${PHP84_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.4-cached"]
}

target "8_5_cached" {
  inherits = ["vanilla_cached"]
  args = {
    PHP_VERSION = "${PHP85_VERSION}"
  }
  tags = ["dustinscarberry/wordpress:php8.5-cached"]
}