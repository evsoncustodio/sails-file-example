FROM node:latest
LABEL maintainer="evsoncustodio"
WORKDIR /var/www
COPY . .
ENV NODE_ENV=production
ENV DEBUG=skipper:file
ENV MONGODB_URL=mongodb://mongo:27017/sails-file-example
ENV PORT=1337
RUN [ "npm", "install" ]
ENTRYPOINT [ "npm", "start" ]
EXPOSE ${PORT}
