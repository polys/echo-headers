FROM node:10-alpine

EXPOSE 80

WORKDIR /app

COPY ./package.json ./package-lock.json ./
RUN npm install

COPY . .

CMD [ "node", "server.js" ]
