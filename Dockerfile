FROM node:latest

WORKDIR /apps

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]