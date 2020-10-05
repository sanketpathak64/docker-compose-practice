FROM alpine
WORKDIR '/app'
COPY package.json .
RUN apk add --update nodejs nodejs-npm
RUN npm install
COPY . .
CMD ["node","app.js"]
