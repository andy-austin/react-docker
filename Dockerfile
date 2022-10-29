FROM node:14.17.3

RUN apt update -y && apt upgrade -y

WORKDIR /app

COPY . .

RUN yarn install

ENV HOST=0.0.0.0

RUN yarn build

CMD ["yarn", "start"]
