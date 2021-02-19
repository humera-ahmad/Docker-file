FROM node:12

WORKDIR /src

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000 3001

CMD ["npm", "start"]
