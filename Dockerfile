FROM node:4.4.2

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /src && cp -a /tmp/node_modules /src/

COPY . /src
WORKDIR /src
EXPOSE 4000
