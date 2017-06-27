FROM hub.c.163.com/nce2/nodejs:0.12.2

# Create app directory
RUN mkdir -p /home/test
WORKDIR /home/test

# Bundle app source
COPY . /home/test
RUN npm install

EXPOSE 8081
CMD [ "npm", "start" ]
