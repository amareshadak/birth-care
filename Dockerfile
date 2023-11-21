FROM node:latest
WORKDIR /
CMD COPY package*.json ./
CMD RUN npm install
CMD COPY . .
CMD RUN npm run build


ENV PORT 3000
# set hostname to localhost
ENV HOSTNAME "0.0.0.0"
EXPOSE 3000
CMD ["npm", "run", "start"]
