FROM php:7.0.6-alpine

RUN apk add --update mysql-client && rm -rf /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN mkdir -p /var/www

# Add volumes
VOLUME ["/var/www"]

# Set the work directory
WORKDIR /var/www

CMD ["php", "-a"]
