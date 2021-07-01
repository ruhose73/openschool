FROM node:16-alpine3.11
ENV APP_ROOT /web
WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}
RUN npm ci
RUN npm run build
CMD ["npm", "run", "start"]