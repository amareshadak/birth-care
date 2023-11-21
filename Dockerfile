FROM node:latest
CMD RUN mkdir /root/app/
WORKDIR /root/app

CMD COPY . /root/app/
CMD RUN npm install
CMD RUN -it -p 8080:8080 Birthcare
EXPOSE 8080/tcp

CMD npm run start
