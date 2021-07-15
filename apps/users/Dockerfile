# Нужно что бы папка src была примонтированна в контейнер, что бы работал хотрелод. 

FROM node:16-alpine3.11
# VOLUME [ "/usr/src/app" ]
WORKDIR /usr/src/app
ADD package*.json ./
RUN npm install
ADD /src ./
CMD [ "node", "server.js" ]
