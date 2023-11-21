FROM node:latest
CMD RUN mkdir /root/app/
WORKDIR /root/app

CMD COPY . /root/app/
CMD RUN npm install



CMD npm run start
