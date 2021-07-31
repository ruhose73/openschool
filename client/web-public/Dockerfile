FROM node:12

ENV PORT 5000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json /usr/src/app/
RUN npm install
RUN npm install framer-motion
RUN npm install @emotion/react
RUN npm install @emotion/styled

# Copying source files
COPY . /usr/src/app


# Running the app
CMD "npm" "run" "dev"