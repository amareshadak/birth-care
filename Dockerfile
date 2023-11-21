FROM node:latest
WORKDIR /app
CMD COPY package*.json ./
CMD RUN npm ci
CMD COPY . .
CMD RUN npm run build
CMD RUN npm install -g serve
EXPOSE 5000
CMD ["serve", "-s", "build", "-l", "5000"]
