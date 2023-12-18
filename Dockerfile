FROM node:slim

WORKDIR /app

COPY ./app/package.* /

RUN npm install

COPY ./app .

CMD node server.js
