# This dockerfile uses the golang image https://hub.docker.com/_/nginx
# VERSION 1
# Author: sinlov
FROM nginx:1.17.2-alpine

LABEL maintainer="nginx Docker Maintainers <sinlovgmppt@gmail.com>"

RUN apk upgrade --no-cache \
  && apk add --no-cache \
  bash \
  git \
  nginx \
  && rm -rf /var/cache/* \
  && rm -rf /root/.cache/*
