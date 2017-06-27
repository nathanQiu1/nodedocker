FROM daocloud.io/node:5
MAINTAINER nathan_qiu@jabil.com

ENV HTTP_PORT 8081

RUN mkdir -p /qiun
COPY . /qiun
WORKDIR /qiun

RUN npm  install

EXPOSE 8081

CMD ["npm", "start"]
