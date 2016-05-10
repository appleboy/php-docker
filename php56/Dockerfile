FROM alpine:edge

MAINTAINER Bo-Yi Wu <appleboy.tw@gmail.com>

RUN apk update \
  && apk add mysql-client ca-certificates

# Install php 5.6
RUN apk add php5 php5-json php5-zlib php5-xml php5-pdo php5-phar \
  php5-pdo_mysql php5-mysqli php5-openssl \
  php5-mcrypt php5-curl php5-opcache php5-ctype \
  php5-bcmath php5-dom php5-xmlreader

RUN apk add curl
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN rm -rf /var/cache/apk/*

RUN mkdir -p /var/www

# Add volumes
VOLUME ["/var/www"]

# Set the work directory
WORKDIR /var/www

CMD ["php", "-a"]
