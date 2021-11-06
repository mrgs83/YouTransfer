FROM node:latest

MAINTAINER YouTransfer.io (info@youtransfer.io)
LABEL version="1.0.6"

VOLUME /opt/youtransfer/config
VOLUME /opt/youtransfer/uploads
VOLUME /usr/sbin/sendmail

WORKDIR 
RUN npm install sendmail --save

WORKDIR /opt/youtransfer/
RUN npm install youtransfer -g
RUN youtransfer init
RUN npm install

EXPOSE 5000

CMD npm run dockerized
