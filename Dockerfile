FROM hub.c.163.com/nce2/nodejs:0.12.2

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service

# Bundle app source
COPY . /home/Service

RUN npm install nodemon -g
RUN npm install

EXPOSE 8888
CMD [ "npm", "start" ]
