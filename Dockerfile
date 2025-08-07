FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 22006

RUN apk update && apk add --no-cache openssl curl &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]
