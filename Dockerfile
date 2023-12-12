# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

ARG NODE_VERSION=18.17.1

FROM node:${NODE_VERSION}-alpine

WORKDIR /usr/src/app

COPY package*.json ./
COPY .env ./

RUN npm install 
RUN npm install -g @quasar/cli

COPY . .

EXPOSE 9000

CMD ["quasar",  "dev"]
