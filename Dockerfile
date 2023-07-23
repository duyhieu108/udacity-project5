FROM node:18-alpine

WORKDIR /app

COPY /src/. .

CMD ["node", "index.js"]

EXPOSE 3000