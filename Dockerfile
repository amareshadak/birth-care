FROM node:latest
WORKDIR /app
CMD COPY package*.json ./
CMD RUN npm ci
CMD COPY . .
RUN npm run build
RUN npm install -g serve
EXPOSE 5000
CMD ["serve", "-s", "build", "-l", "5000"]
