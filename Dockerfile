FROM node:14
WORKDIR /usr/src/app

COPY package.json /usr/src/app
COPY fake-db.json /usr/src/app
COPY server.js /usr/src/app

RUN yarn

COPY . .

CMD ["node", "server.js"]

EXPOSE 3001