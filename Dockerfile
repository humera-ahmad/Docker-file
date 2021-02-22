#creates a layer from the node:12-alpine Docker image
FROM node:12-alpine

#author of the image
MAINTAINER Humera (humera.ahmad@knoldus.com)

#create work directory
WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

#ports used
EXPOSE 3000 3001

CMD ["npm", "start"]
