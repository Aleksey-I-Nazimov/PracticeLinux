FROM ubuntu:latest
MAINTAINER alex
RUN apt-get update
RUN apt-get install nginx -y
VOLUME "/var/www/html"
EXPOSE 80
COPY hellow.html /var/www/html/index.html
CMD /usr/sbin/nginx -g "daemon off;"
