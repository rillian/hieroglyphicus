# Docker file for serving the dictionary.
FROM php:apache

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY html/ /var/www/html/
