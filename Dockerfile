FROM node:18.13.0-slim
LABEL authors="Robson Simonassi"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#COPY package.json /usr/src/app/
#RUN npm install

COPY ./build/.. /usr/src/app

EXPOSE 3000
CMD [ "npm", "start" ]