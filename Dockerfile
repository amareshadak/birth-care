FROM node:latest
WORKDIR /
CMD COPY package*.json ./
CMD RUN npm install
CMD COPY . .
CMD RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]
