FROM node:10.15.0-alpine

RUN yarn global add http-server

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 8080

CMD ["http-server", "dist"]