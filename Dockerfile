FROM node:8.6.0-alpine

RUN apk add --no-cache libc6-compat

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8081

CMD [ "npm", "start"]






  











