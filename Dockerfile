FROM daocloud.io/node:5
MAINTAINER nathan_qiu@jabil.com

ENV HTTP_PORT 8090

RUN mkdir -p /qiun/test/
COPY . /qiun/test
WORKDIR /qiun/test

RUN npm  install

EXPOSE 8090

CMD ["npm", "start"]
