FROM node:16.13.0

WORKDIR /app

COPY yarn.lock .
COPY .env .
COPY *.json .

RUN yarn install

EXPOSE 3001

CMD ["yarn" , "start:dev"]
