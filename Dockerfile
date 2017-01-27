FROM node:7.4.0-alpine
MAINTAINER odecee <devops@odecee.com.au>

WORKDIR /src
COPY package.json /src/package.json

RUN apk upgrade --update-cache --no-cache --available && \
    npm install supervisor@0.11.0 -g && \
    npm install

CMD [ "sh", "start.sh" ]

COPY . /src
