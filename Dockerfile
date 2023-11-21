FROM node:latest

WORKDIR /app
CMD COPY package*.json ./
CMD RUN npm ci
CMD COPY . .

CMD RUN npm install -g serve
CMD RUN npm run build


CMD ["serve", "-s", "build", "-l", "8080"]
