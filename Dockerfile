FROM node:lts-alpine
WORKDIR /usr/app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 3000
RUN yarn build
CMD ["yarn", "ts-node", "src/server.ts"]