FROM node:latest

RUN mkdir -p example/src
COPY src/example.ts example/src/
COPY *.json example/
COPY webpack.config.js example/
COPY yarn.lock example/

WORKDIR /example

RUN yarn
RUN yarn build