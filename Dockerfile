FROM node:latest
WORKDIR /app
CMD COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
RUN npm install -g serve
EXPOSE 5000
CMD ["serve", "-s", "build", "-l", "5000"]
