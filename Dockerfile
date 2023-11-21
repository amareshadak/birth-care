FROM node:latest
CMD RUN mkdir /root/app/
WORKDIR /root/app

CMD COPY . /root/app/
CMD RUN npm install

EXPOSE 3000

ENV PORT 3000

ENV HOSTNAME "0.0.0.0"

CMD ["node", "server.js"]

CMD npm run start
