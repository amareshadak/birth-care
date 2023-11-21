FROM node:latest
CMD RUN mkdir /root/app/
WORKDIR /root/app

CMD COPY . /root/app/
CMD RUN npm install

EXPOSE 8080

CMD npm run start
