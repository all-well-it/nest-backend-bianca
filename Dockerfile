FROM node:16.13.0

WORKDIR ./

COPY package.json ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD [ "yarn", "install", "&&", "yarn", "start" ]