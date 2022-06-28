# Startup from alpine
FROM alpine:latest
LABEL Maintainer = "Hilman Maulana, Laksamadi Guko"
LABEL Description = "MikroTik Hotspot Monitor (Mikhmon) is a web-based application (MikroTik API PHP class) to assist MikroTik Hotspot management."

# Setup document root
WORKDIR /var/www/html

# Mikhmon Version
ARG MIKHMON_VERSION=version-4

# Expose the port nginx is reachable on
EXPOSE 80

# Install packages
RUN apk update && apk add --no-cache \
    nginx \
    supervisor \
    php81 \
    php81-fpm \
    php81-gd \
    php81-mbstring \
    php81-mysqli \
    php81-session

# Create symlink so programs depending on `php` still function
RUN ln -s /usr/bin/php81 /usr/bin/php

# Configure nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Configure PHP-FPM
COPY conf/fpm-pool.conf /etc/php81/php-fpm.d/www.conf
COPY conf/php.ini /etc/php81/conf.d/custom.ini

# Configure supervisord
COPY conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Make sure files/folders needed by the processes are accessable when they run under the nobody user
RUN chown -R nobody.nobody /var/www/html /run /var/lib/nginx /var/log/nginx

# Switch to use a non-root user from here on
USER nobody

# Add application
COPY --chown=nobody ${MIKHMON_VERSION} /var/www/html/

# Let supervisord start nginx & php-fpm
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
