FROM node:10-alpine

WORKDIR /app

COPY server.js ./

ENV PORT 80
EXPOSE 80

CMD [ "node", "server.js" ]
