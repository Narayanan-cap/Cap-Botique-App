FROM node:latest

WORKDIR /apps

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 8088

CMD ["node", "app.js"]