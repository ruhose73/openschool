FROM node:16-alpine3.11
WORKDIR /usr/src/app
ADD package*.json ./
RUN npm install
ADD /src .
CMD [ "node", "server.js" ]
