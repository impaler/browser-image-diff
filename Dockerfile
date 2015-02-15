FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm git git-core nano
RUN npm install -g npm@2.1.7

# node-canvas dependencies
RUN apt-get install -y libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev build-essential g++

# use node for nodejs instead.
RUN sudo ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir -p /var/www
ADD . /var/www

EXPOSE  8080

RUN cd /var/www/server && npm i --loglevel verbose;

CMD node /var/www/server/app.js;