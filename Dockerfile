FROM nginx:1.13-alpine
MAINTAINER Mehdi EL KOUHEN <mehdi.elkouhen@gmail.com>

# https://pkgs.alpinelinux.org/packages

RUN apk update

RUN apk add curl

COPY index.html /usr/share/nginx/html/

COPY default.conf /etc/nginx/conf.d/default.conf

COPY conf.sh conf.sh

CMD ["sh", "conf.sh"]