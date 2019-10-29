FROM node:8-alpine

RUN apk add --no-cache libc6-compat && mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8081

CMD [ "npm", "start"]






  











