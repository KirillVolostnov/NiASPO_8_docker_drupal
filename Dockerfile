FROM drupal:10-apache

# Устанавливаем дополнительные PHP-расширения для работы с изображениями
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

WORKDIR /var/www/html

EXPOSE 80