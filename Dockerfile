FROM ubuntu

RUN apt-get update
RUN apt-get install --yes nodejs
RUN apt-get install --yes npm

#RUN mkdir /myvol
#RUN echo "hello world" > /myvol/greeting
#VOLUME /myvol

RUN mkdir /root/app
COPY ./app /root/app
WORKDIR /root/app

RUN npm install --production

EXPOSE 3000

ENV NODE_ENV=production

CMD [ "npm", "start" ]

#ENTRYPOINT ["/root/startme.sh"]
