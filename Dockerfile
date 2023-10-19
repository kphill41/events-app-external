#FROM launcher.gcr.io/google/nodejs
FROM node:18-alpine3.18

COPY . /app/

WORKDIR /app

RUN npm ci --omit-dev

CMD ["node", "server.js"]
