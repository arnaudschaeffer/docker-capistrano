FROM alpine:3.11

# Update and install base packages
RUN apk update && apk upgrade && apk add curl wget bash

# Install ruby and ruby-bundler
RUN apk add ruby ruby-bundler

# Clean APK cache
RUN rm -rf /var/cache/apk/*

RUN mkdir -p /var/www/html/deploy
WORKDIR /var/www/html/deploy

VOLUME ["/var/www/html"]
