FROM alpine
RUN apk add nodejs npm

WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
CMD node app.js
