# This dockerfile uses the golang image https://hub.docker.com/_/nginx
# VERSION 1
# Author: sinlov
FROM nginx:1.17.2-alpine

LABEL maintainer="nginx Docker Maintainers <sinlovgmppt@gmail.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && apk upgrade --no-cache \
  && apk add --no-cache \
  openrc \
  # bash \
  git \
  fail2ban \
  # && rm -rf /var/cache/* \
  && rm -rf /root/.cache/*

COPY ./fail2ban/filter.d/* /etc/fail2ban/filter.d/
COPY ./fail2ban/jail.d/* /etc/fail2ban/jail.d/

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]