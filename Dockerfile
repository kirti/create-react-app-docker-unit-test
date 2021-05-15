FROM node:12.18.3
LABEL version="1.0"
LABEL description="This is the base docker image for the react app "
LABEL maintainer = ["kirtikau@gmail.com"]

RUN mkdir /srv/example
WORKDIR /srv/example

COPY package.json yarn.lock ./
RUN yarn && yarn cache clean
COPY . .
