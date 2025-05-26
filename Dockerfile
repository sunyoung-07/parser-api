FROM node:18

WORKDIR /app

RUN git clone https://github.com/postlight/mercury-parser.git .

WORKDIR /app/packages/mercury-parser-api

RUN yarn install
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]
