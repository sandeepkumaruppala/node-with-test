FROM node:13.0.1-alpine

RUN apk add --no-cache libc6-compat

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8081

CMD [ "npm", "start"]






  











