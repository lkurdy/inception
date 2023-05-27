FROM debian:buster

EXPOSE 443

RUN apt update ; apt upgrade ; apt install nginx -y ; apt install openssl -y
RUN mkdir -p /etc/nginx/ssl ; mkdir -p /var/run/nginx
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lkurdy.42.fr/UID=lkurdy"
RUN mkdir -p /var/www/wordpress ; chmod 755 /var/www/wordpress ; chown -R www-data:www-data /var/www/wordpress

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
