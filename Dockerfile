FROM hub.c.163.com/nce2/nodejs:0.12.2

# Create app directory
RUN mkdir -p /dock/test
WORKDIR /dock/test

# Bundle app source
COPY . /dock/test
RUN npm install

EXPOSE 8081
CMD [ "npm", "start" ]
