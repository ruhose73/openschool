FROM node:16-alpine3.11
WORKDIR /home/src 
ADD package*.json .. 
RUN npm install .. 
RUN npm install cors --save
RUN npm install jsonwebtoken --save
CMD node server.js
