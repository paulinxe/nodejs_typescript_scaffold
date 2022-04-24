FROM node:18-alpine as app

#RUN npm config set unsafe-perm true

COPY ./app /app
RUN chown -R node:node /app
WORKDIR /app