FROM node:10-alpine

WORKDIR /app

RUN apk update && apk add py-pip && pip install awscli
#RUN npm install -g serverless

RUN chown -R node:node /app
COPY --chown=node:node . /app
USER node
RUN id
RUN ls -al /app
RUN npm install
EXPOSE 4200
