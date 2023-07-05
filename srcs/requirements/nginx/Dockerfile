FROM debian:buster

EXPOSE 443

RUN apt update && apt upgrade -y && apt install nginx openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/run/nginx
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lkurdy.42.fr/UID=lkurdy"
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
