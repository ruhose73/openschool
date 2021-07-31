FROM node:16-alpine3.11
WORKDIR /home/src 
COPY ./src/styles /styles
COPY ./src/components /components
COPY ./src/pages /pages
COPY ./src/public /public
ADD .babelrc ..
ADD .eslintrc ..
ADD next.config.js ..
ADD package*.json .. 
RUN npm install .. 
CMD npm run dev
