FROM php:7.0.6-alpine

RUN apk add --update mysql-client && rm -rf /var/cache/apk/*
RUN mkdir -p /var/www

# Add volumes
VOLUME ["/var/www"]

# Set the work directory
WORKDIR /var/www

CMD ["php", "-a"]
