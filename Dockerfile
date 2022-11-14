FROM php:8.1

RUN apt-get update
RUN apt-get install -y unzip libzip-dev
RUN docker-php-ext-install zip
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN chmod +x /usr/local/bin/composer
