FROM node:8.1

LABEL maintainer "Zak Henry <https://github.com/zerothstack>"


RUN curl 'https://dl-ssl.google.com/linux/linux_signing_key.pub' | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
RUN apt-get update && apt-get install -y xvfb google-chrome-stable

ADD ./scripts/xvfb-launcher.sh /usr/local/bin/xvfb-launcher
