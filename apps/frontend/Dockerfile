FROM node:16-alpine3.11

# create destination directory
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app
# update and install dependency
RUN apk update && apk upgrade
RUN apk add git

# copy the app, note .dockerignore
ADD /src .
RUN npm install

# build necessary, even if no static files are needed,
# since it builds the server as well
RUN npm run build

# start the app
CMD npm run dev