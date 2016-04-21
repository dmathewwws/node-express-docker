FROM node:4.4.2

RUN apt-get update -y
RUN apt-get upgrade -y

RUN mkdir src

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN cp -a /tmp/node_modules /src/

COPY . /src
WORKDIR /src
EXPOSE 4000
