FROM node:latest
CMD RUN mkdir /root/app/
WORKDIR /root/app

CMD COPY . /root/app/
RUN npm install

EXPOSE 3000

CMD npm run start
