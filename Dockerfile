FROM alpine:3.3

RUN apk add --update curl wget mysql-client \
  php-fpm php-json php-zlib php-xml php-pdo php-phar php-openssl \
  php-pdo_mysql php-mysqli \
  php-gd php-iconv php-mcrypt \
  php-curl php-openssl php-dom php-ctype && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
  rm -rf /var/cache/apk/*

RUN mkdir -p /var/www

# Add volumes
VOLUME ["/var/www"]

# Set the work directory
WORKDIR /var/www

CMD ["php", "-a"]
