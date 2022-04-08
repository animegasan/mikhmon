# Alpine base
FROM alpine:latest
LABEL \
     Maintainer = "Hilman Maulana <hilman0.0maulana@gmail.com>, Laksamadi Guko" \
     Description = "MikroTik Hotspot Monitor (Mikhmon) is a web-based application (MikroTik API PHP class) to assist MikroTik Hotspot management."

# Add Nginx, PHP, Supervisor
RUN \
    apk update && \
    apk --no-cache add \
    nginx \
    php7 \
    php7-fpm \
    php7-gd \
    php7-mysqli \
    php7-mbstring \
    supervisor && \
    rm /var/lib/nginx/html/index.html

# Files
COPY nginx.conf /etc/nginx/nginx.conf
COPY configure.sh /configure.sh
COPY supervisord.conf /etc/supervisord.conf
COPY html /var/lib/nginx/html/

# Ports
EXPOSE \
    80/tcp
    445/tcp

# Config
RUN sh /configure.sh
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
