FROM node:14-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --production

COPY . .

ENV NODE_ENV=production

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 8080

CMD ["node", "server.js"]