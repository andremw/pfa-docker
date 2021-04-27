FROM node:14

WORKDIR /usr/src/app

COPY . .

RUN yarn install && \
  yarn build

CMD [ "node", "index.js" ]
