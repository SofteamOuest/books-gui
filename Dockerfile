FROM nginx:1.11
MAINTAINER Mehdi EL KOUHEN <mehdi.elkouhen@gmail.com>

COPY index.html /usr/share/nginx/html/

COPY default.conf /etc/nginx/conf.d/default.conf