FROM node:18-alpine

WORKDIR /usr/app

COPY . .

RUN npm install --quiet
COPY . .