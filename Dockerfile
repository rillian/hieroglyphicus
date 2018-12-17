# Docker file for serving the dictionary.
FROM php:apache

# Use the default production configuration
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Install the mysql database driver.
RUN docker-php-ext-install pdo pdo_mysql

# Add the site files.
COPY html/ /var/www/html/
