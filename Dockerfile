FROM node:lts-alpine3.16
WORKDIR /usr/app
COPY package*.json ./
COPY tsconfig.json tsconfig.json
COPY ./src ./src
RUN yarn install
EXPOSE 3000
RUN yarn build
CMD ["yarn", "ts-node", "src/server.ts"]